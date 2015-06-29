Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9bcI-000609-IF
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 16:09:08 +0000
Received: by lagh6 with SMTP id h6so59678391lag.2
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2015 09:08:43 -0700 (PDT)
Date: Mon, 29 Jun 2015 19:15:19 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150629191519.93ab1e7934af3dc6556a6bbc@gmail.com>
In-Reply-To: <1435588017-24949-3-git-send-email-alllecs@yandex.ru>
References: <1435588017-24949-1-git-send-email-alllecs@yandex.ru>
 <1435588017-24949-3-git-send-email-alllecs@yandex.ru>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC V3 2/3] ddr_spd: add routune for printing SPD contents in
 human readable format
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

On Mon, 29 Jun 2015 17:26:56 +0300
Alexander Smirnov <alllecs@yandex.ru> wrote:

> Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
> ---
>  common/ddr_spd.c  | 239 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/ddr_spd.h |   1 +
>  2 files changed, 240 insertions(+)
> =

> diff --git a/common/ddr_spd.c b/common/ddr_spd.c
> index ea0b529..380ea18 100644
> --- a/common/ddr_spd.c
> +++ b/common/ddr_spd.c
> @@ -61,3 +61,242 @@ uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd=
_eeprom_s *spd)
>  =

>  	return 0;
>  }
> +
> +static char *heights[] =3D {
> +	"<25.4",
> +	"25.4",
> +	"25.4 - 30.0",
> +	"30.0",
> +	"30.5",
> +	"> 30.5"
> +};
> +
> +static char *sdram_voltage_interface_level[] =3D {
> +	"TTL (5V tolerant)",
> +	"LVTTL (not 5V tolerant)",
> +	"HSTL 1.5V",
> +	"SSTL 3.3V",
> +	"SSTL 2.5V",
> +	"SSTL 1.8V"
> +};
> +
> +static char *ddr2_module_types[] =3D {
> +	"RDIMM (133.35 mm)",
> +	"UDIMM (133.25 mm)",
> +	"SO-DIMM (67.6 mm)",
> +	"Micro-DIMM (45.5 mm)",
> +	"Mini-RDIMM (82.0 mm)",
> +	"Mini-UDIMM (82.0 mm)"
> +};
> +
> +static char *refresh[] =3D {
> +	"15.625",
> +	"3.9",
> +	"7.8",
> +	"31.3",
> +	"62.5",
> +	"125"
> +};
> +
> +static char *type_list[] =3D {
> +	"Reserved",
> +	"FPM DRAM",
> +	"EDO",
> +	"Pipelined Nibble",
> +	"SDR SDRAM",
> +	"Multiplexed ROM",
> +	"DDR SGRAM",
> +	"DDR SDRAM",
> +	"DDR2 SDRAM",
> +	"FB-DIMM",
> +	"FB-DIMM Probe",
> +	"DDR3 SDRAM"
> +};
> +
> +static int funct(uint8_t addr)
> +{
> +	int t;
> +
> +	t =3D ((addr >> 4) * 10 + (addr & 0xf));
> +
> +	return t;
> +}
> +
> +static int des(uint8_t byte)
> +{
> +	int k;
> +
> +	k =3D (byte & 0x3) * 10 / 4;
> +
> +	return k;
> +}
> +
> +static int integ(uint8_t byte)
> +{
> +	int k;
> +
> +	k =3D (byte >> 2);
> +
> +	return k;
> +}
> +
> +static int ddr2_sdram_ctime(uint8_t byte)
> +{
> +	int ctime;
> +
> +	ctime =3D (byte >> 4) * 100;
> +	if ((byte & 0xf) <=3D 9)
> +		ctime +=3D (byte & 0xf) * 10;
> +	else if ((byte & 0xf) =3D=3D 10)
> +		ctime +=3D 25;
> +	else if ((byte & 0xf) =3D=3D 11)
> +		ctime +=3D 33;
> +	else if ((byte & 0xf) =3D=3D 12)
> +		ctime +=3D 66;
> +	else if ((byte & 0xf) =3D=3D 13)
> +		ctime +=3D 75;
> +
> +	return ctime;
> +}
> +
> +void ddr_spd_print(uint8_t *record)
> +{
> +	int highestCAS =3D 0;
> +	int cas[256];
> +	int i, i_i, k, x, y;
> +	int ddrclk, tbits, pcclk;
> +	int trcd, trp, tras;
> +	int ctime;
> +	uint8_t parity;
> +	char *ref;
> +	struct ddr2_spd_eeprom_s *s =3D (struct ddr2_spd_eeprom_s *)record;
> +
> +	ctime =3D ddr2_sdram_ctime(s->clk_cycle);
> +	ddrclk =3D 2 * (1000 / ctime) * 100;
> +	tbits =3D ((s->res_7) << 8) + (s->dataw);
> +	if (((s->config) & 0x03) =3D=3D 1)
> +		tbits =3D tbits - 8;
> +
> +	pcclk =3D ddrclk * tbits / 8;
> +	pcclk =3D pcclk - (pcclk % 100);
> +	i_i =3D ((s->nrow_addr) & 0x0f) + ((s->ncol_addr) & 0x0f) - 17;
> +	k =3D (((s->mod_ranks) & 0x7) + 1) * (s->nbanks);
> +	trcd =3D (((s->trcd) >> 2) + (((s->trcd) & 3) * 0.25)) / ctime * 100;
> +	trp =3D (((s->trp) >> 2) + (((s->trp) & 3) * 0.25)) / ctime * 100;
> +	tras =3D (s->tras) * 100 / ctime ;
> +	x =3D (int)(ctime / 100);
> +	y =3D (ctime - (int)((ctime / 100) * 100)) / 10;
> +
> +	for (i_i =3D 2; i_i < 7; i_i++) {
> +		if ((s->cas_lat) & (1 << i_i)) {
> +			highestCAS =3D i_i;
> +			cas[highestCAS]++;
> +		}
> +	}
> +	printf("---=3D=3D=3D SPD EEPROM Information =3D=3D=3D---\n");
> +	printf("%-50s OK (0x%0X)\n", "EEPROM Checksum of bytes 0-62", s->cksum);
> +	printf("%-50s %d\n", "# of bytes written to SDRAM EEPROM", s->info_size=
);
> +	printf("%-50s %d\n", "Total number of bytes in EEPROM", 1 << (s->chip_s=
ize));
> +
> +	if ((s->mem_type) < 11)
> +		printf("%-50s %s\n", "Fundamental Memory type", type_list[(s->mem_type=
)]);
> +	else
> +		printf("%-50s (%02x)\n", "Warning: unknown memory type", s->mem_type);
> +
> +	printf("%-50s %x.%x\n", "SPD Revision", (s->spd_rev) >> 4, (s->spd_rev)=
 & 0x0f);
> +
> +	printf("\n---=3D=3D=3D Memory Characteristics =3D=3D=3D---\n");
> +	printf("%-50s %d MHz (PC2-%d)\n", "Maximum module speed", ddrclk, pcclk=
);
> +	if (i_i > 0 && i_i <=3D 12 && k > 0)
> +		printf("%-50s %d MB\n", "Size", ((1 << i_i) * k));

extra brackets here.

> +	else
> +		printf("%-50s INVALID: %02x %02x %02x %02x\n", "Size", s->nrow_addr, s=
->ncol_addr, s->mod_ranks, s->nbanks);
> +
> +	printf("%-50s %d x %d x %d x %d\n", "Banks x Rows x Columns x Bits", s-=
>nbanks, s->nrow_addr, s->ncol_addr, s->dataw);
> +	printf("%-50s %d\n", "Ranks", ((s->mod_ranks) & 0x7) + 1);

and here

> +	printf("%-50s %d bits\n", "SDRAM Device Width", (s->primw));
and here
> +	if (((s->mod_ranks) >> 5) < 7)

Please use ARRAY_SIZE(heights) instead of 7.

> +		printf("%-50s %s mm\n", "Module Height", heights[((s->mod_ranks) >> 5)=
]);
> +	else
> +		printf("Error height\n");
> +
> +	printf("%-50s %s\n", "Module Type", ddr2_module_types[fls(s->dimm_type)=
 - 1]);
> +	printf("%-50s ", "DRAM Package ");
> +	if (((s->mod_ranks) & 0x10) =3D=3D 1)
> +		printf("Stack\n");
> +	else
> +		printf("Planar\n");
> +	if ((s->voltage) < 7)
> +		printf("%-50s %s\n", "Voltage Interface Level", sdram_voltage_interfac=
e_level[s->voltage]);
> +	else
> +		printf("Error Voltage Interface Level\n");
> +
> +	printf("%-50s ", "Module Configuration Type ");
> +
> +	parity =3D (s->config) & 0x07;
> +	if (parity =3D=3D 0)
> +		printf("No Parity\n");
> +
> +	if ((parity & 0x03) =3D=3D 0x01)
> +		printf("Data Parity\n");
> +	if (parity & 0x02)
> +		printf("Data ECC\n");
> +
> +	if (parity & 0x04)
> +		printf("Address/Command Parity\n");
> +
> +	if (((s->refresh) >> 7) =3D=3D 1)
> +		ref =3D "- Self Refresh";
> +	else
> +		ref =3D " ";
> +
> +	printf("%-50s Reduced (%s us) %s\n", "Refresh Rate", refresh[(s->refres=
h) & 0x7f], ref);
> +	printf("%-50s %d, %d\n", "Supported Burst Lengths", (s->burstl) & 4, (s=
->burstl) & 8);
> +
> +	printf("%-50s %dT\n", "Supported CAS Latencies (tCL)", highestCAS);
> +	printf("%-50s %d-%d-%d-%d as DDR2-%d\n", "tCL-tRCD-tRP-tRAS", highestCA=
S, trcd, trp, tras, ddrclk);
> +	printf("%-50s %d.%d ns at CAS %d\n", "Minimum Cycle Time", x, y, highes=
tCAS);
> +	printf("%-50s 0.%d%d ns at CAS %d\n", "Maximum Access Time", ((s->clk_a=
ccess) >> 4), ((s->clk_access) & 0xf), highestCAS);
> +	printf("%-50s %d ns\n", "Maximum Cycle Time (tCK max)", ((s->tckmax) >>=
 4) + ((s->tckmax) & 0x0f));
> +printf("\n---=3D=3D=3D Timing Parameters =3D=3D=3D---\n");

wrong formatting here.

> +	printf("%-50s 0.%d ns\n", "Address/Command Setup Time Before Clock (tIS=
)", (funct(s->ca_setup)));
> +	printf("%-50s 0.%d ns\n", "Address/Command Hold Time After Clock (tIH)"=
, (funct(s->ca_hold)));
> +	printf("%-50s 0.%d%d ns\n", "Data Input Setup Time Before Strobe (tDS)"=
, ((s->data_setup) >> 4), ((s->data_setup) & 0xf));
> +	printf("%-50s 0.%d%d ns\n", "Data Input Hold Time After Strobe (tDH)", =
((s->data_hold) >> 4), ((s->data_hold) & 0xf));
> +
> +	printf("%-50s %d.%d ns\n", "Minimum Row Precharge Delay (tRP)", integ(s=
->trp), des(s->trp));
> +	printf("%-50s %d.%d ns\n", "Minimum Row Active to Row Active Delay (tRR=
D)", integ(s->trrd), des(s->trrd));
> +	printf("%-50s %d.%d ns\n", "Minimum RAS# to CAS# Delay (tRCD)", integ(s=
->trcd), des(s->trcd));
> +	printf("%-50s %d ns\n", "Minimum RAS# Pulse Width (tRAS)", (((s->tras) =
& 0xfc) + ((s->tras) & 0x3)));
> +	printf("%-50s %d.%d ns\n", "Write Recovery Time (tWR)", integ(s->twr), =
des(s->twr));
> +	printf("%-50s %d.%d ns\n", "Minimum Write to Read CMD Delay (tWTR)", in=
teg(s->twtr), des(s->twtr));
> +	printf("%-50s %d.%d ns\n", "Minimum Read to Pre-charge CMD Delay (tRTP)=
", integ(s->trtp), des(s->trtp));
> +	printf("%-50s %d ns\n", "Minimum Active to Auto-refresh Delay (tRC)", s=
->trc);
> +	printf("%-50s %d ns\n", "Minimum Recovery Delay (tRFC)", s->trfc);
> +	printf("%-50s 0.%d ns\n", "Maximum DQS to DQ Skew (tDQSQ)", s->tdqsq);
> +	printf("%-50s 0.%d ns\n", "Maximum Read Data Hold Skew (tQHS)", s->tqhs=
);
> +
> +	printf("\n---=3D=3D=3D Manufacturing Information =3D=3D=3D---\n");
> +
> +	printf("%-50s", "Manufacturer JEDEC ID");
> +	for (i =3D 64; i < 72; i++)
> +		printf(" %02x", record[i]);
> +
> +	printf("\n");
> +	if (s->mloc)
> +		printf("%-50s 0x%02x\n", "Manufacturing Location Code", s->mloc);
> +
> +	printf("%-50s ", "Part Number");
> +	for (i =3D 73; i < 91; i++) {
> +		if (record[i] >=3D 32 && record[i] < 127)
> +			printf("%c", record[i]);
> +		else
> +			printf("%d", record[i]);
> +	}
> +	printf("\n");
> +	printf("%-50s 20%d-W%d\n", "Manufacturing Date", record[93], record[94]=
);
> +	printf("%-50s 0x", "Assembly Serial Number");
> +	for (i =3D 95; i < 99; i++)
> +		printf("%02X", record[i]);
> +}
> diff --git a/include/ddr_spd.h b/include/ddr_spd.h
> index fc03bac..01fe73c 100644
> --- a/include/ddr_spd.h
> +++ b/include/ddr_spd.h
> @@ -228,6 +228,7 @@ struct ddr3_spd_eeprom_s {
>  	uint8_t cust[80];        /* 176-255 Open for Customer Use */
>  };
>  =

> +extern void ddr_spd_print(uint8_t *record);
>  extern uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *s=
pd);
>  extern uint32_t ddr2_spd_checksum_pass(const struct ddr2_spd_eeprom_s *s=
pd);
>  =

> -- =

> 2.1.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
