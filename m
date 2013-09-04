Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH7H9-0004sX-Su
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 07:13:16 +0000
Date: Wed, 4 Sep 2013 09:12:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904071253.GJ30088@pengutronix.de>
References: <0EC48711-FFBD-438E-A85A-1FB2A466A613@reinrag.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0EC48711-FFBD-438E-A85A-1FB2A466A613@reinrag.net>
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
Subject: Re: [PATCH 3/4] small tweeks to build system for compatibility on
 MacOS X
To: Darren Garnier <dgarnier@reinrag.net>
Cc: barebox@lists.infradead.org

Hi Darren,

On Mon, Sep 02, 2013 at 10:22:49PM -0400, Darren Garnier wrote:
> Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
> ---
> Makefile       | 6 +++---
> scripts/genenv | 3 ++-
> 2 files changed, 5 insertions(+), 4 deletions(-)

Applied, thanks.

I had to hand edit this patch. Your mailer seems to remove leading
spaces:


diff --git a/Makefile b/Makefile
index 397c54a..ff17d8f 100644
--- a/Makefile
+++ b/Makefile
@@ -577,7 +577,7 @@ define rule_barebox__
	$(cmd_sysmap) $@ System.map;                                         \
	if [ $$? -ne 0 ]; then                                               \
		rm -f $@;                                                    \
-		/bin/false;                                                  \
+		false;                                                       \
	fi;
endef

^^^

There should be a space before 'endef'

I won't be able to apply bigger patches this way. Consider using
git-send-email, once configured to actually send something it will most
likely send correct patches.

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
