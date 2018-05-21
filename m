Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKmQ4-000844-A9
 for barebox@lists.infradead.org; Mon, 21 May 2018 15:08:17 +0000
Date: Mon, 21 May 2018 17:08:03 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180521150803.GB12008@ravnborg.org>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-9-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180521115438.26493-9-pmamonov@gmail.com>
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
Subject: Re: [PATCH v2 08/12] MIPS: use CKSEG1 instead of KSEG1
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter.

On Mon, May 21, 2018 at 02:54:34PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---

Can you elaborate a little over this change?
Earlier IOMEM was fixed to use KSEG1 and not CKSEG1

And now something else moves the other way.

For readers like me that has no clue what KSEG0 and CKSEG0
is the change looks like noise.
It may be perfectly fine, but there is no backgrond info to tell why

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
