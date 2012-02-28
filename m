Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S2MGI-0003Jf-SO
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 12:34:36 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1330382728-10708-1-git-send-email-robert.jarzmik@free.fr>
 <20120228083622.GM3852@pengutronix.de>
Date: Tue, 28 Feb 2012 13:34:24 +0100
In-Reply-To: <20120228083622.GM3852@pengutronix.de> (Sascha Hauer's message of
 "Tue, 28 Feb 2012 09:36:22 +0100")
Message-ID: <877gz7xhkf.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH] drivers/mci: fix read/write stalling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Mon, Feb 27, 2012 at 11:45:28PM +0100, Robert Jarzmik wrote:
> Do we have to send CMD12 even when a single block transfer failed?
Yes, we should.

For instance, the PXA host can stall even on a single block read. The spec
states that only a "Operation Complete" or "CMD12" brings back the card to
"tran" state. If a CRC error occurs in the middle of the read, the card has the
right to stay in "data" state.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
