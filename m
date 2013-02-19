Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7swf-0000Q3-Sk
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 19:33:42 +0000
Date: Tue, 19 Feb 2013 20:33:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130219193339.GF25672@pengutronix.de>
References: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
 <1361135101-994-3-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361135101-994-3-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 2/2] fs: add pread and pwrite functions
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Sun, Feb 17, 2013 at 10:05:01PM +0100, Alexander Aring wrote:
> Add pread and pwrite functions.
> 
> Split read and write functions to save some space.
> The functions pread and pwrite saves and sets the file
> position to a given offset and restore them afterwards.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

This currently breaks compilation of the nandtest command. We have two
options: Either rename pread/pwrite functions in the nandtest command or
just drop the static versions in the nandtest command.

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
