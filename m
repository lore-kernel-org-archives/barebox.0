Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhEOQ-00008f-LZ
 for barebox@lists.infradead.org; Mon, 05 May 2014 08:36:59 +0000
Received: by mail-la0-f52.google.com with SMTP id pn19so1052985lab.39
 for <barebox@lists.infradead.org>; Mon, 05 May 2014 01:36:35 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20140505072233.GT5858@pengutronix.de>
References: <1398846723-10241-1-git-send-email-y>
 <5360b51b.c62a980a.05b6.526e@mx.google.com>
 <20140505072233.GT5858@pengutronix.de>
Date: Mon, 05 May 2014 10:36:32 +0200
Message-ID: <1399278992.5032.19.camel@mars>
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
Subject: Re: [PATCH 3/3] net cpsw: check phy status on send and receive
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 2014-05-05 at 09:22 +0200, Sascha Hauer wrote:
> On Wed, Apr 30, 2014 at 10:32:03AM +0200, chf.fritz@googlemail.com wrote:
> > From: Christoph Fritz <chf.fritz@googlemail.com>
> > 
> > This patch adds phy status checks on cpsw_send() and cpsw_recv().
> > This is derived from upstream.
> 
> What's the motivation for this? We already call phy_update_status every
> 5 seconds which then calls phy_device->adjust_link. Isn't this enough?

I have no test to proof necessity. I'm fine dropping this patch.

 Thanks
  -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
