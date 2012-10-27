Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TS5RE-0001jM-Hr
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 12:24:29 +0000
Date: Sat, 27 Oct 2012 14:24:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121027122426.GE1641@pengutronix.de>
References: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/3] readline: add ctrl-w handling (cut-the-last-word)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, Oct 26, 2012 at 09:58:52AM +0400, Antony Pavlov wrote:
> The popular 'bash' command interpreter has the ctrl-w keystroke for
> cutting the last word in the command line. This keystroke is
> very handy for me and I really miss it in barebox.
> 
> This patch series adds ctrl-w support to barebox's readline
> and in addition fixes a typo.
> 
> [RFC 1/3] readline: move backspace key handling to the DO_BACKSPACE
> [RFC 2/3] readline: add ctrl-w handling (cut-the-last-word)
> [RFC 3/3] readline: fix the 'new blank line at EOF' typo

Looks good.

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
