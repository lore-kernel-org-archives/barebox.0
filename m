Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QLrga-0003CK-LX
	for barebox@lists.infradead.org; Mon, 16 May 2011 06:53:49 +0000
Received: by bwz1 with SMTP id 1so4442725bwz.36
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 23:53:46 -0700 (PDT)
Message-ID: <4DD0C9F6.6050407@gmail.com>
Date: Mon, 16 May 2011 12:53:42 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <4DCD32B4.9090606@yandex-team.ru> <4DCD37D9.5020408@gmail.com>
	<20110516063018.GC30963@pengutronix.de>
In-Reply-To: <20110516063018.GC30963@pengutronix.de>
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
Subject: Re: [PATCH] fix console fifo (and loadb/loady commands)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 05/16/2011 12:30 PM, Sascha Hauer wrote:
> Hi Alexey,
>
> On Fri, May 13, 2011 at 07:53:29PM +0600, Alexey Galakhov wrote:
>> This patch fixes loadb and loady commands. tstc() should return true if
>> console_input_buffer is not empty.
> The patch is fine, thanks.
>
> Your mailer converts tabs into whitespaces. Also you forgot to add a
> signed-off-by to your patch. I fixed this up manually this time.
>
> Sascha
Thank you! I'll check my mailer.

I'm preparing some more patches: s3c framebuffer support (originally
written by Juergen Beisert but broken and outdated), mini2440
framebuffer support and JPEG image decoding (takes about 20kB of space
by itself but reduces overall size significantly due to smaller image
files).

--
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
