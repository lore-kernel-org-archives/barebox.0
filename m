Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CAi-0001M2-NA
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:27:05 +0000
Message-ID: <1464333964.7273.2.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:26:04 +0200
In-Reply-To: <20160525202203.GA23045@ravnborg.org>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
 <20160525133302.GD21031@pengutronix.de>
 <1464187352.4917.26.camel@lws-tremmet.phytec.de>
 <20160525202203.GA23045@ravnborg.org>
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
Subject: Re: [PATCH 00/62] Update UBI
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

Am Mittwoch, den 25.05.2016, 22:22 +0200 schrieb Sam Ravnborg:
> On Wed, May 25, 2016 at 04:42:32PM +0200, Teresa Remmet wrote:
> > Hello Robert,
> > 
> > Am Mittwoch, den 25.05.2016, 15:33 +0200 schrieb Robert Schwebel:
> > > On Mon, May 23, 2016 at 10:25:48AM +0200, Teresa Remmet wrote:
> > > > this series is more or less just a cherry-pick of the UBI patches
> > > > from kernel to version v4.6. Rework was need for some patches to make
> > > > them apply and work for barebox.
> > > 
> > > These patches should have your Signed-off-by:.
> > 
> > I added the Signed-off to all patches I had to touch manually due to a
> > conflict. A lot applied luckily just out of the box. 
> S-o-b document the path from original author until commitet.
> So if a patch passed through 10 persons there should be 10 S-o-b
> even if noe of them touched the original patch.
> The the S-o-b can be used to track down how the patch ended up in
> barebox.

thank you for your explanation.
I will send a new version with the S-o-b added.

Teresa

> 
> 	Sam



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
