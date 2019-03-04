Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0m6l-0001pW-BX
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:50:13 +0000
Date: Mon, 4 Mar 2019 12:50:06 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190304115006.GA16532@ravnborg.org>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
 <20190304113823.21535-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190304113823.21535-2-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/6] crc: import crc_itu_t() from kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Mar 04, 2019 at 12:38:18PM +0100, Sascha Hauer wrote:
> Out cyc_crc16() function is the same function as crc_itu_t() in the
s/Out/barebox/
> Linux kernel. Import and use crc_itu_t() from the Kernel for
> consistency.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
