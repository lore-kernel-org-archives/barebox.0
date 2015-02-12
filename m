Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpqj-0002ab-Rb
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 09:14:18 +0000
Date: Thu, 12 Feb 2015 10:13:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150212091353.GQ12209@pengutronix.de>
References: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
 <1423578481-25230-2-git-send-email-dbrainard@brainardinsight.com>
 <54DABFB8.7030107@atmel.com>
 <CA+nEJintvUAV9VhOWye1n9POC4B=iM5u_ZEbJ=ocUnZrmumfFg@mail.gmail.com>
 <CA+nEJi=gTz74211UK2SpydavR1bAN8p6KgQynBoF20M7vW=nPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+nEJi=gTz74211UK2SpydavR1bAN8p6KgQynBoF20M7vW=nPQ@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] Switched SAMA5D4EK development board to the newer
 environment method.
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 11, 2015 at 10:39:52AM -0700, Doug Brainard wrote:
> So it looks like the following line in mtdparts-add is causing the
> "nand0." issue:
> 
> addpart -n /dev/${device} "$parts" || exit
> 
> The old environment didn't use the "-n".  Removing the "-n" fixes the
> issue and gives it the same functionality as the old environment did.
> 
> So the question is how should I fix this?  I could remove it in the
> default environment, but that would require all other boards using the
> new environment to update.
> 
> Or, I can add my own env/bin/mtdparts-add script for the board and
> remove the "-n" from there instead which would leave the other
> projects alone.  I'm assuming I should use this option as the fix, but
> I wanted to confirm that with you.

I would rather add a '-n' option to the mtdparts-add script. Anyway, I
just sent a series updating the partition handling. Among other things
I hope that this fixes the naming issue.

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
