Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZRvs-0003UP-Hh
 for barebox@lists.infradead.org; Mon, 06 May 2013 20:22:48 +0000
Date: Mon, 6 May 2013 22:22:23 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506222223.7bd1412b@skate>
In-Reply-To: <20130506191615.GO20989@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130506191615.GO20989@pengutronix.de>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sascha Hauer,

On Mon, 6 May 2013 21:16:15 +0200, Sascha Hauer wrote:

> >  quiet_cmd_csingle	= CC      $@
> > -      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
> > +      cmd_csingle	= $(CC)  -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
> 
> This is a whitespace change only, right? Please drop this.

Correct, will fix in v2.

(For the record, I think this white space change was due to me adding
-g to the CFLAGS of host tools in order to run the kwbimage tool under
gdb).

Thanks for the review!

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
