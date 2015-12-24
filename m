Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aC3Nc-0000Up-5I
 for barebox@lists.infradead.org; Thu, 24 Dec 2015 10:44:21 +0000
Received: by mail-lb0-x22f.google.com with SMTP id sv6so51966182lbb.0
 for <barebox@lists.infradead.org>; Thu, 24 Dec 2015 02:43:59 -0800 (PST)
Date: Thu, 24 Dec 2015 13:46:53 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151224134653.101687ad@berta>
In-Reply-To: <20151223194602.GJ11966@pengutronix.de>
References: <20151223191058.4ffb07f4@berta>
 <20151223194602.GJ11966@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [RFC] device probe order
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Wed, 23 Dec 2015 20:46:02 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Peter,
> 
> On Wed, Dec 23, 2015 at 07:10:58PM +0300, Peter Mamonov wrote:
> > Dear All,
> > 
> > I've ported an UHCI driver from the u-boot to the barebox (WIP). To
> > interoperate with the EHCI driver, the UHCI driver should be probed
> > ater the EHCI driver. Both drivers are binded via the device tree
> > mechanism. How can i achieve the correct probe order?
> 
> Do you have an example binding to look at? Normally I would assume
> that the binding makes sure somehow that the uhci driver has to be
> probed.


At the moment the binding is quite straightforward:

		ehci: ehci@1ba00200 {
			compatible = "generic-ehci";
			reg = <0x00000000 0x20 0x00000000 0x100>;
			status = "disabled";
		};

		uhci: uhci@1ba00000 {
			compatible = "generic-uhci";
			reg = <0x00000000 0x200>;
			status = "disabled";
		};

Probably, we can add "companion = <&ehci>;" into the uhci node and
check if the ehci has been probed by calling of_find_device_by_node(),
as  Alexander Aring proposed.

> 
> Sascha
> 
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
