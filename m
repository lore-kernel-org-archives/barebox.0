Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from b-pb-sasl-quonix.pobox.com ([208.72.237.35]
	helo=sasl.smtp.pobox.com)
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PzpTP-00046n-0F
	for barebox@lists.infradead.org; Wed, 16 Mar 2011 12:05:07 +0000
Message-ID: <4D80A767.2040408@pobox.com>
Date: Wed, 16 Mar 2011 21:04:55 +0900
From: Shinya Kuribayashi <skuribay@pobox.com>
MIME-Version: 1.0
References: <n> <4d701d31.9009d80a.2cd3.5e72@mx.google.com>
In-Reply-To: <4d701d31.9009d80a.2cd3.5e72@mx.google.com>
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
Subject: Re: [PATCH 02/54] Add arch/nios2/Makefile
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On 3/4/11 7:58 AM, franck.jullien@gmail.com wrote:
> @@ -0,0 +1,31 @@
> +CPPFLAGS += -fno-strict-aliasing
> +
> +board-$(CONFIG_GENERIC) := generic
> +cpu-$(CONFIG_NIOS2)	:= nios2

Any other processor core types other than 'nios2?'  Can we name
it just arch/nios2/cpu/, not arch/nios2/cpu-nios2/?


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
