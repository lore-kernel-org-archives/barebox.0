Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdFSA-0004b1-Vy
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 08:24:07 +0000
Date: Mon, 4 Nov 2013 09:23:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131104082343.GP24559@pengutronix.de>
References: <1383462428-19259-1-git-send-email-plagnioj@jcrosoft.com>
 <20131103073043.GA916@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131103073043.GA916@omega>
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
Subject: Re: [PATCH 1/1] bcm2835: move mci register at board level
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 03, 2013 at 08:30:44AM +0100, Alexander Aring wrote:
> On Sun, Nov 03, 2013 at 08:07:08AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > not all board have a SD coard
> > 
> s/coard/card

Applied and fixed typo.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
