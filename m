Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp99.ord1d.emailsrvr.com ([184.106.54.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEynZ-00028l-Kw
 for barebox@lists.infradead.org; Mon, 30 Sep 2019 16:45:23 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <a50d9f81-57c8-7682-d1cf-4e7924069c03@mev.co.uk>
Date: Mon, 30 Sep 2019 17:45:16 +0100
MIME-Version: 1.0
Content-Language: en-GB
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [BUG] Cadence QSPI broken since barebox-2019.06.0?
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi all,

I'm using Barebox on a Cyclone5 SoCFPGA system, booting from QSPI NOR 
flash (name "s25fl256s1"), using the Cadence QSPI driver.

All is fine with barebox 2019.05.0, but with barebox 2019.06.0 I get the 
following errors from xload when it tries to probe the QSPI flash device:

cadence_qspi cadence_qspi0: Spansion Quad bit not set
cadence_qspi cadence_qspi0: Spansion quad-read not enabled
cadence_qspi cadence_qspi0: quad mode not supported
cadence_qspi cadence_qspi0: probing for flashchip failed
cadence_qspi cadence_qspi0: Cadence QSPI NOR probe failed
cadence_qspi cadence_qspi0: probe failed: error 22

I think there was a nasty bug introduced in commit 5085d2ef3fbf ("mtd: 
spi-nor: cadence: add cqspi_set_protocol") leading to corruption of the 
`struct cqspi_st` private data structure in 
"drivers/mtd/spi-nor/cadence-quadspi.c".  The bug is in the handling of 
the `current_cs` member of `struct cqspi_st`:

1. `cqspi_probe()` initializes the `current_cs` member to -1.

2. `cqspi_probe()` calls `cqspi_setup_flash()` for each chip select.

3. `cqspi_setup_flash()` calls `spi_nor_scan()` to look probe for the 
SPI-NOR flash chip.

4. `spi_nor_scan()` calls `spi_nor_read_id()` to read the JEDEC ID.

5. `spi_nor_read_id()` calls `nor->read_reg()`, which is 
`cqspi_read_reg()`, to read the JEDEC ID registers.

6. `cqspi_read_reg()` calls new function `cqspi_set_protocol()`.

7. `cqspi_set_protocol()` starts with the following code:

	struct cqspi_st *cqspi = nor->priv;
	struct cqspi_flash_pdata *f_pdata;

	f_pdata = &cqspi->f_pdata[cqspi->current_cs];

	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;

   However, `cqspi->current_cs` still has the initial value of -1, so 
this will corrupt the parts of `struct cqspi_st` that precedes the 
`f_pdata[]` member.  (It is probably the `fifo_depth` member that will 
be corrupted by the above code.)

Even if `cqspi->current_cs` is not -1, it will be the previous chip 
select, not the current chip select, so is wrong anyway.

To fix the bug, probably the first thing that `cqspi_set_protocol()` 
should do is call `cqspi_configure()`, which will update the 
`current_cs` member to the correct value, select the correct chip select 
and update the baudrate divisor and delays.  (It doesn't look like 
`cqspi_configure()` is affected by any changes to the `inst_width`, 
`addr_width` or `data_width` values.) The bug fix _could_ do some error 
checking first, but what it definitely should not do is update the 
members of `cqspi->f_pdata[cqspi->current_cs]` until `current_cs` before 
`cqspi_current_cs` has been updated.

There may be other problems with the commit too.  `cqspi_set_protocol()` 
modifies `f_pdata->data_width` according to the current read protocol 
(single, dual or quad mode), but it doesn't modify `f_pdata->addr_width` 
according to the current addressing mode.  This might make 
`cqspi_calc_rdreg()` return the wrong value.  (`cqspi_calc_rdreg()` is 
the only function that uses the `f_pdata->addr_width` value.  Other 
functions use `nor->addr_width` instead.)

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
