Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSFb-0006K2-Bd
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 07:37:12 +0000
Date: Mon, 21 Oct 2019 09:37:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191021073706.m3k2f4vop3ryu64c@pengutronix.de>
References: <20191018114546.dbalujyk2x6oyqyi@pengutronix.de>
 <1571418627-279424-1-git-send-email-r.karszniewicz@phytec.de>
 <7c7d28bb-0d1c-0b4f-7372-b409210b4a9f@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c7d28bb-0d1c-0b4f-7372-b409210b4a9f@phytec.de>
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
Subject: Re: [PATCH v3] libfile: copy_file: prevent spurious error message
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 18, 2019 at 07:15:27PM +0200, Robert Karszniewicz wrote:
> In all this haste, I forgot my question.
> 
> What error codes should be used? For each goto its own code, in sequence,
> starting from -1?

Please propagate the error code returned from the call that failed. i.e.
something like:

	r = read(srcfd, rw_buf, RW_BUF_SIZE);
	if (r < 0) {
		perror("read");
		ret = r;
		goto out;
	}

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
