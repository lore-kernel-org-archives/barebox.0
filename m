Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4rIW-0004hd-SD
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 13:53:05 +0000
Date: Tue, 16 Jun 2015 15:52:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150616135241.GT6325@pengutronix.de>
References: <1433490685-27486-1-git-send-email-s.christ@phytec.de>
 <1433490685-27486-2-git-send-email-s.christ@phytec.de>
 <20150615102008.GA15736@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150615102008.GA15736@lws-christ>
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
Subject: Re: [PATCH v2] barebox update: add note after successful update
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Mon, Jun 15, 2015 at 12:20:08PM +0200, Stefan Christ wrote:
> Hi Sascha,
> 
> *ping, is this patch acceptable?

I thought about this again.

I would find this message more useful from the new, updated barebox
rather than from the barebox that does the update. This way we could
also see the message with offline updates when for example a SD
card has been updated on an external host. Also we would have more
freedom to react on an outdated environment in the next steps. We could
for example make it configurable to completely ignore an outdated
environment or just to issue a warning message.
Doing this should be fairly simple, we could store the barebox version
in a nv variable and compare the variable with the current version
during startup.

What do you think?

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
