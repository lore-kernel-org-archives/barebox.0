Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCcFc-0002Dk-0x
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:44:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 4 Mar 2013 21:43:11 +0100
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
 <1362392034-1908-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362392034-1908-11-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201303042143.11982.jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/10] mtd: nand: Add command to generate a flash BBT
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> [...]
> +static int do_imx_nand_bbm(int argc, char *argv[])
> +{
> +	int opt, ret;
> +	struct cdev *cdev;
> +	struct mtd_info *mtd;
> +	int yes = 0;
> +	void *bbt;
> +
> +	while ((opt = getopt(argc, argv, "y")) > 0) {
> +		switch (opt) {
> +		case 'y':
> +			yes = 1;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	cdev = cdev_open("nand0", O_RDWR);

Is a fixed name a good idea?

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
