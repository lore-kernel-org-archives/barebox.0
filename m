Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDshJ-0002rb-0v
	for barebox@lists.infradead.org; Wed, 12 Oct 2011 06:53:49 +0000
Date: Wed, 12 Oct 2011 08:53:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111012065344.GG13898@pengutronix.de>
References: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
	<1318084919-3984-3-git-send-email-plagnioj@jcrosoft.com>
	<20111009093850.GO31404@pengutronix.de>
	<20111010181045.GA18064@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111010181045.GA18064@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] sha1: drop never used sha1_hmac
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 10, 2011 at 08:10:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:38 Sun 09 Oct     , Sascha Hauer wrote:
> > On Sat, Oct 08, 2011 at 04:41:57PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  crypto/sha1.c |   39 ---------------------------------------
> > >  1 files changed, 0 insertions(+), 39 deletions(-)
> > 
> > This one does not apply. We do not have a crypto/ dir in the tree.
> the frist patch do the move it

Ah, ok. I probably skipped the first patch because I thought it's the
introductory mail.

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
