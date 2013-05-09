Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-03-ewr.mailhop.org ([204.13.248.66]
 helo=mho-01-ewr.mailhop.org)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaOqQ-0003Lj-D4
 for barebox@lists.infradead.org; Thu, 09 May 2013 11:17:06 +0000
Date: Thu, 9 May 2013 07:16:39 -0400
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20130509111639.GF31290@titan.lakedaemon.net>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1368093171-17845-3-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368093171-17845-3-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH v3 2/7] scripts: add kwboot tool
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Thomas,

On Thu, May 09, 2013 at 11:52:46AM +0200, Thomas Petazzoni wrote:
> This tool is used with Marvell EBU SoC to trigger the UART boot mode
> provided by the SoC BootROM, and push the bootloader image to the
> target using the Xmodem protocol.
> 
> It has been taken from the U-Boot source code, with minor
> modifications to make it work with Armada 370/XP platforms.

Could you add a note which revision of u-boot it was pulled from?  That
should make later syncs between the two versions much easier.

To that end, Sascha, do you think it is worth the extra commit to have
one commit copying the file over, and a second adding changes to make it
work with Armada 370/XP?

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
