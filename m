Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yn0yn-0005Ss-5v
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 08:34:58 +0000
Date: Tue, 28 Apr 2015 10:34:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150428083432.GF4946@pengutronix.de>
References: <1429735158-4250-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1429735158-4250-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] checkpatch: add DT compatible string documentation checks
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Florian Vaussard <florian.vaussard@epfl.ch>, Rob Herring <robh@kernel.org>

Hi Antony,

On Wed, Apr 22, 2015 at 11:39:18PM +0300, Antony Pavlov wrote:
> This adds a simple check that any compatible strings in DeviceTree dts
> files are present in Documentation/devicetree/bindings and
> in dts/Bindings/.
> 
> Vendor prefixes are also checked for existing in vendor-prefixes.txt.
> 
> This code is based on linux v4.0-rc6 checkpatch.pl dt-checking code by
> Rob Herring & Florian Vaussard:
> 
>     Rob Herring (2):
>         checkpatch: add DT compatible string documentation checks
>         checkpatch: fix wildcard DT compatible string checking
> 
>     Florian Vaussard (3):
>         checkpatch: fix spurious vendor compatible warnings
>         checkpatch: check compatible strings in .c and .h too
>         checkpatch: improve the compatible vendor match

Sorry for the delay. The reason I haven't written you back is that I was
unsure if we want to have the compatible checks in barebox. I now think
it's good to have them, so I merged this patch.

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
