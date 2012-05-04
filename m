Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQF7N-0006N9-NG
 for barebox@lists.infradead.org; Fri, 04 May 2012 09:48:06 +0000
Received: by lbbgg6 with SMTP id gg6so2385936lbb.36
 for <barebox@lists.infradead.org>; Fri, 04 May 2012 02:48:03 -0700 (PDT)
Message-ID: <4FA3A5CF.9050503@gmail.com>
Date: Fri, 04 May 2012 15:47:59 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <1336050844-7043-5-git-send-email-agalakhov@gmail.com>
 <201205031959.57093.jbe@pengutronix.de>
In-Reply-To: <201205031959.57093.jbe@pengutronix.de>
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
Subject: Re: [PATCH 4/4] S5PV210 iROM magic boot code
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 03.05.2012 23:59, Juergen Beisert wrote:
> It seems to be a low hanging fruit to use the iROM to access some of the
> peripherals. But there is no way to tell the compiler the calling convention
> to the ROM functions. And the entry points seems guessed only. This results
> into "it works for me with this compiler and these compiler flags and that
> CPU's silicon revision"...
> 
> The S3C6410 CPU comes also with such an iROM. But calling it is only useful in
> the first stage loader (and the S3C6410 iROM has a defined jump table to
> call specific functions, there is no need to guess the real entry points).
> 
> Writing a Barebox driver for this MMC/SD unit instead should be the correct
> way.
> 
> Juergen

Agree.

This function is for 1st stage only. I plan to remove it as soon as MMC
driver will be complete. Right now it is needed, however, to boot 2nd stage.

Right not I have working NAND, DRAM and UART. I plan to get working USB
soon. MMC seems to be (almost) generic SDHCI (very similar to existing
imx driver).

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
