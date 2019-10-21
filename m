Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSUG-0003qy-GH
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 07:52:21 +0000
Date: Mon, 21 Oct 2019 09:52:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191021075218.7ij6jib4hcjsfx76@pengutronix.de>
References: <MN2PR16MB3117C56576A8FB7A258431B691870@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190926064116.aix5mx2fwtbqyrzc@pengutronix.de>
 <MN2PR16MB3117311DB17F1F18B283BCE391860@MN2PR16MB3117.namprd16.prod.outlook.com>
 <20190927064405.lfcibvom2xo3awy6@pengutronix.de>
 <MN2PR16MB311733CE9E54B05E89F0090291810@MN2PR16MB3117.namprd16.prod.outlook.com>
 <MN2PR16MB311759D0859AB61BC1977E99916C0@MN2PR16MB3117.namprd16.prod.outlook.com>
 <MN2PR16MB311709C5A0F09CA7B9F69A24916C0@MN2PR16MB3117.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB311709C5A0F09CA7B9F69A24916C0@MN2PR16MB3117.namprd16.prod.outlook.com>
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
Subject: Re: barebox 2019.07 ubiformat
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Renaud,

On Fri, Oct 18, 2019 at 03:09:00PM +0000, Barbier, Renaud wrote:
> Looking at the Linux nand_ecc, there is something specific for512 bytes size ecc:
> 
> if (eccsize_mult == 2 && (i & 0x4) == 0)
>                         rp16 ^= tmppar;
> 
> code[2] =
> +                   (invparity[par & 0xf0] << 7) |
> +                   (invparity[par & 0x0f] << 6) |
> +                   (invparity[par & 0xcc] << 5) |
> +                   (invparity[par & 0x33] << 4) |
> +                   (invparity[par & 0xaa] << 3) |
> +                   (invparity[par & 0x55] << 2) |
> +                   (invparity[rp17] << 1) |
> +                   (invparity[rp16] << 0);
> 
> In barebox we have:
> ecc_code[2] = ((~reg1) << 2) | 0x03;
> 
> So I guess there is a small change to do to support 512 bytes.

What we have in barebox currently seems to be the nand_ecc.c version of
Linux-2.6.25. A git log of that file from v2.6.25 to master has:

260dc003e9fd mtd: nand: fix 512 byte software ecc support

So yes, we do not seem to have 512 byte software ecc support.

I'd say just update nand_ecc.c to a recent Kernel version.

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
