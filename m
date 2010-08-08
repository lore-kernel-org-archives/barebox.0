Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pfepa.post.tele.dk ([195.41.46.235])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ohzgc-0002TQ-Vm
	for barebox@lists.infradead.org; Sun, 08 Aug 2010 06:48:48 +0000
Date: Sun, 8 Aug 2010 08:48:46 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20100808064846.GA31364@merkur.ravnborg.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 08, 2010 at 06:17:53AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will add also the support of the new ncurse interface nconfig
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Hi Jean-Christophe.

[jc - sorry for the duplicate.
 I forgot to delete the patch and have cancelled
 the mail to the mailing list. (too big)
]

In the kconfig land we are workng on an enhancement to
nconf so we replace the "use first or second char in  menu as hotkey".
The initial reason why we started this was that people
did not like that some menus had the second char
capitalized like this:

   "mOdule support"

The reason why "O" is capital and not "m" is that "m" hotkey
is already in use. And we use the capital letter to signal
the relevant hotkey.
menuconfig does so using a different color, but the
high level ncurses interface nconfig uses does not allow this.

We are also working on a fix to savedefconfig.
savedefconfig is a new target used to save a minimal config.

So all-in-all I would like to see this sync happen
either a bit later this kernel cycle, or that you
resync again later in this cycle.

Which bring up another question.
We have plenty of projects out there that rely
on kconfig.
What can we do to kconfig to make the integration easier?

We have discussed that kconfig should be a seperate
installable tool (as rpm, deb whatever).
But there is a few quirks needed before we can do so.

But are there any other thing we could do to
make life easier for external users?

        Sam


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
