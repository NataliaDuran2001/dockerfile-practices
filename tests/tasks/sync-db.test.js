const { syncDb } = require("../../tasks/sync-db");


describe('Pruebas de Sync DB', () => {

    test('debe ejecutar el proceso 2 veces',  () => {
        syncDb()
        const times = syncDb();
        expect(times).toBe(2);
    });
});