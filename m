Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XGwwa-0005sR-2k
 for barebox@lists.infradead.org; Mon, 11 Aug 2014 21:15:52 +0000
Received: by mail-wg0-f52.google.com with SMTP id a1so8998509wgh.23
 for <barebox@lists.infradead.org>; Mon, 11 Aug 2014 14:15:29 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 11 Aug 2014 23:15:20 +0200
Message-ID: <147c6ecc700.2784.107cef0f820c2f5d7b7f41463071c310@gmail.com>
In-Reply-To: <20140811203151.GA31137@arch.cereza>
References: <1407761351-12344-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <147c64f0830.2784.107cef0f820c2f5d7b7f41463071c310@gmail.com>
 <20140811203151.GA31137@arch.cereza>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] ARM: mvebu: Add Plathome Kirkwood Openblocks A6 board
 support
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On August 11, 2014 10:32:58 PM Ezequiel Garcia 
<ezequiel.garcia@free-electrons.com> wrote:

> On 11 Aug 08:23 PM, Sebastian Hesselbarth wrote:
> > On August 11, 2014 2:50:22 PM Ezequiel Garcia
> > <ezequiel.garcia@free-electrons.com> wrote:
...
> > >diff --git a/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> > >b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> > >new file mode 100644
> > >index 0000000..84e06cd
> > >--- /dev/null
> > >+++ b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> > >@@ -0,0 +1,11 @@
> > >+/*
> > >+ * Barebox specific DT overlay for OpenBlocks A6 board
> > >+ */
> > >+
> > >+#include "arm/kirkwood-openblocks_a6.dts"
> > >+
> > >+/ {
> > >+	chosen {
> > >+		stdout-path = "/ocp@f1000000/serial@12000";
> >
> > Nit: above serial node on Kirkwood has a label, i.e. you should use &uart0
> > instead. Also, this should go into the upstream dts, too.
> >
>
> Ah, OK. In that case, do you think we still need the devicetree overlay?

Not necessarily. All overlay dts are usually only for heartbeat led. Your 
choice.

Sebastian



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
