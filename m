Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3SE-0002dF-KC
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 11:45:00 +0000
Date: Mon, 28 Oct 2019 12:44:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191028114457.q6u2yo6rjlqyyoe5@pengutronix.de>
References: <9bc4633e-6f71-0c6c-988c-e8a1e11e713a@pengutronix.de>
 <1572002352-387612-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572002352-387612-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH v2] sandbox: add_image: mmap block devices
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 25, 2019 at 01:19:12PM +0200, Robert Karszniewicz wrote:
> This makes it possible to mount block devices from the host machine,
> which have been passed as arguments to --image
> 
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
> Changes from v1:
> - move -1 to the right side of the comparison
> 
>  arch/sandbox/os/common.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Applied, thanks

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
