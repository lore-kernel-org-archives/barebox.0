Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5fK2-0003Z2-QL
 for barebox@lists.infradead.org; Wed, 25 May 2016 20:22:31 +0000
Date: Wed, 25 May 2016 22:22:03 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160525202203.GA23045@ravnborg.org>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
 <20160525133302.GD21031@pengutronix.de>
 <1464187352.4917.26.camel@lws-tremmet.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464187352.4917.26.camel@lws-tremmet.phytec.de>
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
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, May 25, 2016 at 04:42:32PM +0200, Teresa Remmet wrote:
> Hello Robert,
> 
> Am Mittwoch, den 25.05.2016, 15:33 +0200 schrieb Robert Schwebel:
> > On Mon, May 23, 2016 at 10:25:48AM +0200, Teresa Remmet wrote:
> > > this series is more or less just a cherry-pick of the UBI patches
> > > from kernel to version v4.6. Rework was need for some patches to make
> > > them apply and work for barebox.
> > 
> > These patches should have your Signed-off-by:.
> 
> I added the Signed-off to all patches I had to touch manually due to a
> conflict. A lot applied luckily just out of the box. 
S-o-b document the path from original author until commitet.
So if a patch passed through 10 persons there should be 10 S-o-b
even if noe of them touched the original patch.
The the S-o-b can be used to track down how the patch ended up in
barebox.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
