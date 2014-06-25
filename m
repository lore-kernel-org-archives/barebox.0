Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-03-ewr.mailhop.org ([204.13.248.66]
 helo=mho-01-ewr.mailhop.org)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wzsik-0005DI-V7
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 19:19:04 +0000
Date: Wed, 25 Jun 2014 15:18:36 -0400
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20140625191836.GS10202@titan.lakedaemon.net>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH RFC 0/4] MVEBU SoC full USB support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Andrew Lunn <andrew@lunn.ch>

On Wed, Jun 25, 2014 at 04:08:44PM +0200, Sebastian Hesselbarth wrote:
> This *RFC* adds a driver stub for ChipIdea USB dual role controllers
> found on Marvell MVEBU SoCs. Although, I consider this driver quite
> finished, the corresponding DT binding is not. Also, we currently
> have no corresponding driver in Linux for both MVEBU CI stub and
> USB PHY.
> 
> The reason I send it here and now, is to get some input from the
> (Linux) MVEBU guys on the binding and functional tests on Armada XP.

My first thought is if this chipidea IP is used beyond the mvebu
ecosystem.  Shouldn't we name it and it's compatible strings with
'chipidea' instead of 'marvell'?

Also, is there any other way to differentiate between the two versions
other that manufacturing process resolution?  Perhaps the free-electrons
guys could get us some IP revision numbers?

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
