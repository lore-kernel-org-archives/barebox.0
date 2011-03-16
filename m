Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from b-pb-sasl-quonix.pobox.com ([208.72.237.35]
	helo=sasl.smtp.pobox.com)
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PzpuD-0004Jh-PD
	for barebox@lists.infradead.org; Wed, 16 Mar 2011 12:32:50 +0000
Message-ID: <4D80ADEA.8020208@pobox.com>
Date: Wed, 16 Mar 2011 21:32:42 +0900
From: Shinya Kuribayashi <skuribay@pobox.com>
MIME-Version: 1.0
References: <n> <4d701d2f.9009d80a.2cd3.5e70@mx.google.com>
In-Reply-To: <4d701d2f.9009d80a.2cd3.5e70@mx.google.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/54] New arch (NIOS2)
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On 3/4/11 7:58 AM, franck.jullien@gmail.com wrote:
> This is the base files of the Nios2 port. Almost everything is comming from u-boot.

It's always safe bet to divert the decent U-Boot bits to an initial port
(and a new architecture support) of Barebox, but at the same time it's a
good opportunity to rebase old stuff against the recent Linux kernel.

For instance, if some of nios2 asm header files can be adjusted to recent
ones, I'd recommend to do it this time.  It won't take so long, and helps
you avoid sending small patches later :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
