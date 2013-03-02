Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBvof-00049P-Vd
 for barebox@lists.infradead.org; Sat, 02 Mar 2013 23:26:10 +0000
Message-ID: <1362266753.2127.14.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 03 Mar 2013 00:25:53 +0100
In-Reply-To: <20130301131742.GF23022@game.jcrosoft.org>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-2-git-send-email-dev@lynxeye.de>
 <20130301131742.GF23022@game.jcrosoft.org>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/7] tegra: move address map to tegra20-silicon.h
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Am Freitag, den 01.03.2013, 14:17 +0100 schrieb Jean-Christophe
PLAGNIOL-VILLARD:
> On 10:22 Fri 01 Mar     , Lucas Stach wrote:
> > The address map is specific to the Tegra20 SoC. Move it to a
> > file with an appropriate name. While at it clarify and fix
> > the definitions.
> 
> folloow the kernel

The Tegra kernel is fully device tree enabled and doesn't need any of
those defines, as the hardware mapping is encoded in the DT. While I'm
certainly aiming for the same thing in barebox, it's just not the right
thing to do at this state of development.

> > 
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  [...]


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
