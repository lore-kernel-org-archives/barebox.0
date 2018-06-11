Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSRfc-0005ND-EF
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 18:36:02 +0000
Date: Mon, 11 Jun 2018 18:35:48 +0000 (UTC)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20180611064103.10531-1-s.hauer@pengutronix.de>
Message-ID: <alpine.DEB.2.20.1806111811470.16589@blala.de>
References: <20180611064103.10531-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] commands: oftree: kill oftree -f
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,
On Mon, 11 Jun 2018, Sascha Hauer wrote:

> Being able to free the live device tree seemed like a good idea in the
> early days of device tree support when the first boards were brought up.
> It turned out to be illusory that noone stores pointers to the live tree
> which become invalid when oftree -f is executed. Enough people stumbled
> upon crashed boards with this option, so remove it finally.

oftree -f is still in use in boot scripts, e.g. for the kindle-mx50,
and at least one other board.
The usecase for the kindle-mx50 is
* DT based barebox
* ATAGs dependent antiquated, non upgradeable kernel

start_linux() (arch/arm/lib32/armlinux.c) wont do setup_tags() if there
still exists an oftree.
If there is an alternative way to make boot issue 
ATAGs, removing the -f option would be fine.

May I mention an old (rejected) proposal about this issue
http://lists.infradead.org/pipermail/barebox/2016-December/028633.html

Also note: it's still in Documentation/user/devicetree.rst

Regards, Alexander

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
