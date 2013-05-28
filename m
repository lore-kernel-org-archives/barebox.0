Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhMrI-00026e-A4
 for barebox@lists.infradead.org; Tue, 28 May 2013 16:34:49 +0000
Message-ID: <1369758872.4778.22.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 28 May 2013 18:34:32 +0200
In-Reply-To: <20130528105538.GE27130@game.jcrosoft.org>
References: <1369727146-15275-1-git-send-email-jlu@pengutronix.de>
 <20130528105538.GE27130@game.jcrosoft.org>
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
Subject: Re: [SPAM] [PATCH] scripts: genenv: remove empty files from tempdir
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, 2013-05-28 at 12:55 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote:
> On 09:45 Tue 28 May     , Jan Luebbe wrote:
> > This allows leaving out default files from the environment by overriding
> > them with empty files in the board or BSP.
> > 
> > Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> > ---
> can we move it to the buildir and keep it
> 
> and no need to have a uniq name everytime

Sorry, could you explain this again differently? I don't understand your
comment.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
