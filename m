Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8lDh-00085F-7p
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 09:16:45 +0000
Date: Fri, 3 Jun 2016 11:16:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160603091623.GY31666@pengutronix.de>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 0/12] Add basic support for arm64
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 02, 2016 at 10:06:46AM +0200, Raphael Poggi wrote:
> Hello,
> 
> This patch series introduces a basic support for arm64.
> 
> The arm64 code is merged in the current arch/arm directory.
> I try to be iterative in the merge process, and find correct solutions
> to handle both architecture at some places.
> 
> I test the patch series by compiling arm64 virt machine and arm32 vexpress-a9 and test it
> in qemu, everything seems to work.

Overall this looks quite good already and I think we can soon start
merging the first steps. What's important for me is that arm32 is
unaffected by the changes (seems to be the case for this series) and
that we do not merge code that does not work and is only present because
it's copied from arm32

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
