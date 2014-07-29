Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC7L2-0003pM-3b
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 13:21:12 +0000
Date: Tue, 29 Jul 2014 15:20:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140729132045.GI23235@pengutronix.de>
References: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 00/11] ARM: add support for Canon DIGIC chips and
 Canon PowerShot A1100 IS
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 29, 2014 at 01:15:19AM +0400, Antony Pavlov wrote:
> Changes since v1:
> 
>   * fix reset_cpu();
>   * add real Canon A1100 camera support.
> 
> DIGIC is Canon Inc.'s name for a family of SoC
> for digital cameras and camcorders.
> 
> See http://en.wikipedia.org/wiki/DIGIC for details.
> 
> There is no publicly available specification for
> DIGIC chips. All information about DIGIC chip
> internals is based on reverse engineering efforts
> made by CHDK (http://chdk.wikia.com) and
> Magic Lantern (http://www.magiclantern.fm) projects
> contributors.
> 
> Also this patch series adds initial support for Canon
> PowerShot A1100 IS compact camera (it is my only camera
> with connected UART interface). As the DIGIC-based cameras
> differences mostly are unsignificant (e.g. RAM-size,
> ROM type and size, GPIO usage) the other compact
> and DSLR cameras support can be easely added.
> 
> One can easely run barebox for Canon A1100 using QEMU version 2.0
> or newer.
> 
> This patchseries uses some patches already submitted to maillist:
> 
>    * clean barebox.zynq
>    * treewide: drop Doxygen stuff

Applied this series up to 9/11 since I'm quite unsure if it's allowed
to include a GPLv3+ tool into a GPLv2 project.
There are some ways out of this situation:

- Ask the author to relicense it under GPLv2+
- rewrite the tool
- Use it as external tool
- Convince me that it's allowed ;)

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
