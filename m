Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS4Tx-0004nt-Ch
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:36:49 +0000
Date: Wed, 19 Aug 2015 16:36:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819143626.GJ18700@pengutronix.de>
References: <CAK7LNAQ5jJLpkszp5iT65zfcaQsfPqqvk0U=p+cB+E+tqN-oEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQ5jJLpkszp5iT65zfcaQsfPqqvk0U=p+cB+E+tqN-oEQ@mail.gmail.com>
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
Subject: Re: [Question] device-tree-rebasing include path
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

Hi Masahiro,

On Mon, Aug 10, 2015 at 08:05:59AM +0900, Masahiro Yamada wrote:
> Hi Sascha,
> 
> I have a question about the include path
> of device-tree-rebasing.
> 
> 
> When I saw scripts/Makefile.lib, I noticed that
> "-I $(srctree)/dts/src" is included for pre-processor,
> whereas "-i $(srctree)/dts/src/$(SRCARCH)" for DTC-native.
> 
> The root of device-tree-rebasing is dts/src/ when we use '#include',
> but dts/src/$(SRCARCH) when we use '/include/'
> 
> 
> Is this intentional?

Nope, this is not intentional. Currently there is no user for /include/ for
something in dts/, so we could change this to be consistent without
breaking anything.

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
