Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTxQr-0003PZ-1Z
 for barebox@lists.infradead.org; Fri, 25 Nov 2011 15:11:17 +0000
Received: by bkat2 with SMTP id t2so5026251bka.36
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2011 07:11:14 -0800 (PST)
Message-ID: <4ECFB00F.3070002@gmail.com>
Date: Fri, 25 Nov 2011 16:11:11 +0100
From: Hubert Feurstein <h.feurstein@gmail.com>
MIME-Version: 1.0
References: <20111124143239.GA32286@pengutronix.de>
In-Reply-To: <20111124143239.GA32286@pengutronix.de>
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
Subject: Re: [PATCH] atmel_spi: add mesg->actual_length, so devices can use
 it for read/write
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On 2011-11-24 15:32, Michael Grzeschik wrote:
> Without this i.e. the m25p driver is not working properly.

Hi,

I've tested your change together with the at25 eeprom driver and it
still works :)

Acked-by: Hubert Feurstein <h.feurstein@gmail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
