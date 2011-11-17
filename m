Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RR4Fe-00015W-05
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 15:51:47 +0000
Date: Thu, 17 Nov 2011 16:51:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111117155141.GK27267@pengutronix.de>
References: <201111161004.13969.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201111161004.13969.jbe@pengutronix.de>
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
Subject: Re: [PATCH/next] x86: Provide 'unaligned' macros for x86 arch as well
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 16, 2011 at 10:04:13AM +0100, Juergen Beisert wrote:
> These macros are used in the generic partition detection code.
> So, x86 would fails without it.

This is already fixed in master since:

commit 8d6d5d43dde84b0352195a3ce6d0b9101e651073
Author: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Date:   Wed Nov 9 19:39:56 2011 -0200

    x86: fix build error because of missing header
    
    Signed-off-by: Lucas De Marchi <lucas.demarchi@profusion.mobi>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
