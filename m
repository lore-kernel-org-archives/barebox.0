Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLKEt-00018M-UM
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 20:47:48 +0000
Date: Mon, 8 Oct 2012 22:47:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121008204745.GT1322@pengutronix.de>
References: <1349641053-18685-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349641053-18685-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] add 'miitool' command to view media-independent interface
 status
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Mon, Oct 08, 2012 at 12:17:33AM +0400, Antony Pavlov wrote:
> This command is based on "mii-diag" and "mii-tool" programs.
> 
> TODO:
>  * drop MII_ANER_ and MII_AN_, use linux/mii.h macros;
>  * add routines to manipulate media-independent interface state.

Such a tool is nice to have. Some small comments inline.

>  
> +config CMD_MIITOOL
> +	bool
> +	prompt "miitool command"
> +	depends on NET
> +	default y

no default y please.

> +
> +#ifdef	CMD_MII_TOOL_DEBUG
> +#define	PRINTF(fmt,args...)	printf (fmt ,##args)
> +#else
> +#define PRINTF(fmt,args...)
> +#endif

use standard debug()

> +
> +/* Table of known MII's */
> +static struct {
> +	u_short	id1, id2;
> +	u_short	mask1, mask2;
> +	char	*name;
> +} mii_id[] = {
> +	{ 0x7810, 0x0003, 0xffff, 0xffff, "Level One LXT970A" },
> +	{ 0x7810, 0x0000, 0xffff, 0xfff0, "Level One LXT970/LXT971" },
> +	{ 0x0013, 0x78e0, 0xffff, 0xfff0, "Level One LXT971A" },
> +};

Maybe we should find a place where other code (phylib?) can use this
table aswell?

> +	{ "100baseTx-HD",	ADVERTISE_100HALF },
> +	{ "100baseTx-FD",	ADVERTISE_100FULL },
> +	{ "100baseT4",	LPA_100BASE4 },
> +	{ "100baseTx",	ADVERTISE_100FULL | ADVERTISE_100HALF },
> +	{ "10baseT",	MII_AN_10BASET_FD | MII_AN_10BASET_HD },
> +};
> +#define NMEDIA (sizeof(media)/sizeof(media[0]))
> +
> +static char *media_list(int mask, int best)
> +{
> +	static char buf[100];
> +	int i;
> +	*buf = '\0';
> +	mask >>= 5;
> +	for (i = 4; i >= 0; i--) {
> +	if (mask & (1 << i)) {
> +		strcat(buf, " ");
> +		strcat(buf, media[i].name);
> +		if (best) break;
> +	}
> +	}

indention broken here.

> +	if (mask & (1 << 5))
> +		strcat(buf, " flow-control");
> +
> +	return buf;
> +}
> +
> +static int verbose = 0;
> +
> +static int show_basic_mii(int fd)
> +{
> +	char buf[100];
> +	int i, mii_val[32];
> +	int bmcr, bmsr, advert, lkpar;
> +
> +	/* Some bits in the BMSR are latched, but we can't rely on being
> +	   the only reader, so only the current values are meaningful */
> +	mdio_read(fd, MII_BMSR);
> +	for (i = 0; i < ((verbose > 1) ? 32 : 8); i++)
> +		mii_val[i] = mdio_read(fd, i);
> +
> +	if (mii_val[MII_BMCR] == 0xffff) {
> +		fprintf(stderr, "  No MII transceiver present!.\n");
> +		return -1;
> +	}
> +
> +	/* Descriptive rename. */
> +	bmcr = mii_val[MII_BMCR]; bmsr = mii_val[MII_BMSR];
> +	advert = mii_val[MII_ADVERTISE]; lkpar = mii_val[MII_LPA];
> +
> +	buf[0] = 0;
> +	if (bmcr & BMCR_ANENABLE) {
> +		if (bmsr & BMSR_ANEGCOMPLETE) {
> +			if (advert & lkpar) {
> +				strcat(buf, (lkpar & LPA_LPACK) ?
> +					"negotiated" : "no autonegotiation,");
> +				strcat(buf, media_list(advert & lkpar, 1));
> +				strcat(buf, ", ");

usually a single sprintf is cheaper in terms of binary size.

> +			} else {
> +				strcat(buf, "autonegotiation failed, ");
> +			}
> +		} else if (bmcr & BMCR_ANRESTART) {
> +		strcat(buf, "autonegotiation restarted, ");
> +		}
> +	} else {
> +		sprintf(buf+strlen(buf), "%s Mbit, %s duplex, ",
> +			(bmcr & BMCR_SPEED100) ? "100" : "10",
> +			(bmcr & BMCR_FULLDPLX) ? "full" : "half");
> +	}
> +	strcat(buf, (bmsr & BMSR_LSTATUS) ? "link ok" : "no link");
> +
> +	printf("%s\n", buf);
> +
> +	if (verbose > 1) {
> +		printf("  registers for MII PHY: ");
> +		for (i = 0; i < 32; i++)
> +			printf("%s %4.4x", ((i % 8) ? "" : "\n   "), mii_val[i]);
> +
> +		printf("\n");
> +	}
> +
> +	if (verbose) {
> +		printf("  product info: ");
> +		for (i = 0; i < NMII; i++)
> +			if ((mii_id[i].id1 == (mii_val[2] & mii_id[i].mask1)) &&
> +				(mii_id[i].id2 == (mii_val[3] & mii_id[i].mask2)))
> +				break;
> +
> +		if (i < NMII)
> +			printf("%s rev %d\n", mii_id[i].name, mii_val[3]&0x0f);
> +		else
> +			printf("vendor %02x:%02x:%02x, model %d rev %d\n",
> +				mii_val[2]>>10, (mii_val[2]>>2)&0xff,
> +				((mii_val[2]<<6)|(mii_val[3]>>10))&0xff,
> +				(mii_val[3]>>4)&0x3f, mii_val[3]&0x0f);
> +
> +		printf("  basic mode:   ");
> +		if (bmcr & BMCR_RESET)
> +			printf("software reset, ");
> +		if (bmcr & BMCR_LOOPBACK)
> +			printf("loopback, ");
> +		if (bmcr & BMCR_ISOLATE)
> +			printf("isolate, ");
> +		if (bmcr & BMCR_CTST)
> +			printf("collision test, ");
> +		if (bmcr & BMCR_ANENABLE) {
> +			printf("autonegotiation enabled\n");
> +		} else {
> +			printf("%s Mbit, %s duplex\n",
> +			   (bmcr & BMCR_SPEED100) ? "100" : "10",
> +			   (bmcr & BMCR_FULLDPLX) ? "full" : "half");
> +		}
> +		printf("  basic status: ");
> +		if (bmsr & BMSR_ANEGCOMPLETE)
> +			printf("autonegotiation complete, ");
> +		else if (bmcr & BMCR_ANRESTART)
> +			printf("autonegotiation restarted, ");
> +		if (bmsr & BMSR_RFAULT)
> +			printf("remote fault, ");
> +		printf((bmsr & BMSR_LSTATUS) ? "link ok" : "no link");
> +		printf("\n  capabilities:%s", media_list(bmsr >> 6, 0));
> +		printf("\n  advertising: %s", media_list(advert, 0));
> +
> +		if (lkpar & MII_AN_ABILITY_MASK)
> +			printf("\n  link partner:%s", media_list(lkpar, 0));
> +		printf("\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static int do_miitool(int argc, char *argv[])
> +{
> +	char *filename;
> +	int opt;
> +	int argc_min;
> +	int fd;
> +
> +	verbose = 0;
> +	while ((opt = getopt(argc, argv, "v")) > 0) {
> +		switch (opt) {
> +		case 'v':
> +			verbose++;
> +			break;
> +		}

		default:
			return COMMAND_ERROR_USAGE;

Unfortunately this is missing in most of our commands.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
