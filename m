Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViOTJ-0001VJ-DO
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 13:02:35 +0000
Date: Mon, 18 Nov 2013 14:01:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131118130158.GK17135@pengutronix.de>
References: <1383728519.178149099@f98.i.mail.ru>
 <20131106095727.GJ24559@pengutronix.de>
 <527CDE8B.8000003@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <527CDE8B.8000003@gmail.com>
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
Subject: Re: dt-bindings status
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Nov 08, 2013 at 01:52:27PM +0100, Sebastian Hesselbarth wrote:
> On 11/06/13 10:57, Sascha Hauer wrote:
> >On Wed, Nov 06, 2013 at 01:01:59PM +0400, Alexander Shiyan wrote:
> >>Hello.
> >>
> >>DTS files from the current kernel require "include/dt-bindings".
> >>Are there plans to add these parts of the kernel tree in the barebox?
> >>Thanks.
> >
> >We should add this for barebox aswell once we need it. Right now I
> >haven't missed it. If you need it feel free to add it.
> 
> I miss it! :)
> 
> I haven't found a way to tell dtc's cpp that those includes are in
> include/dt-bindings, but I didn't look very hard.

I just found out:

From 3808314a4014c201e4047ddf44187fadcedaaebd Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Nov 2013 13:59:17 +0100
Subject: [PATCH] ARM: dtb: create dt-bindings link

For making #include <dt-bindings/...> work

We already have the necessary -I flag in dtc_cpp_flags, no nothing
needs to be done here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/include/dt-bindings | 1 +
 1 file changed, 1 insertion(+)
 create mode 120000 arch/arm/dts/include/dt-bindings

diff --git a/arch/arm/dts/include/dt-bindings b/arch/arm/dts/include/dt-bindings
new file mode 120000
index 0000000..0cecb3d
--- /dev/null
+++ b/arch/arm/dts/include/dt-bindings
@@ -0,0 +1 @@
+../../../../include/dt-bindings
\ No newline at end of file
-- 
1.8.4.2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
