Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbTjH-0001pK-72
 for barebox@lists.infradead.org; Sun, 12 May 2013 10:42:11 +0000
Date: Sun, 12 May 2013 12:41:42 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130512124142.3f5a97c0@skate>
In-Reply-To: <20130512102404.GV32299@pengutronix.de>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130512075644.GT20989@pengutronix.de>
 <20130512111246.72df8918@skate>
 <20130512102404.GV32299@pengutronix.de>
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
Subject: Re: [PATCH v3 0/7] Basic support for Armada 370/XP SOCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sascha Hauer,

On Sun, 12 May 2013 12:24:04 +0200, Sascha Hauer wrote:

> How about a warning like:
> 
> "Warning: 'plathome-openblocks-ax3-binary.0' does not exist. Not building barebox.kwb"
> 
> Also not an ideal solution, but I think there is no really good way to
> solve this other than including the binary in the tree which probably
> has some licensing issues.

The problem is that the Makefile doesn't know that kwbimage will need
plathome-openblocks-ax3-binary.0, it would have to parse the
kwbimage.cfg file to know about this.

Also, not all .kwb images will require this binary blob. Kirkwood and
Dove do not require such a binary blob, and a kwb image can be built
with just the kwbimage.cfg and barebox.bin. So it is really a
per-kwbimage.cfg knowledge.

Another solution is to add an option to kwbimage that allows it to list
which files are needed to make the build succeed. Then
arch/arm/Makefile can call this, check that we have the needed files.
If not, it shows a warning, otherwise it goes on with the build.

Other ideas welcome, of course.

Best regards,

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
