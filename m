Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpsmtpb-ews08.kpnxchange.com ([213.75.39.13])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUv4o-0002i9-9i
 for barebox@lists.infradead.org; Tue, 01 Apr 2014 09:33:51 +0000
Message-ID: <533A87F5.9080400@erwinrol.com>
Date: Tue, 01 Apr 2014 11:33:41 +0200
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
References: <20140401090229.GT17250@pengutronix.de>
In-Reply-To: <20140401090229.GT17250@pengutronix.de>
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
Subject: Re: Introducing barebOS
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

You could use a small Linux system with an adapted kexec to boot
barebOS.  That way barebOS doesn't have to bother with the boot processes.

- Erwin


On 1-4-2014 11:02, Sascha Hauer wrote:
> Hi All,
> 
> barebox more and more comes in the area that is has everything an
> operating system needs:
> 
> - support for all kinds of storage devices
> - support for various different fileystems
> - Cooperative multitasking with the poller mechanism
> - memory management in form of malloc/free and iospace resources
> - drivers for Networking, MMC, USB, UARTs, Framebuffer devices, (S)ATA,
>   SPI, I2C, W1, Keyboard, EEPROMs, LEDs
> 
> I therefore decided that it's no longer necessary to have the overhead
> of Linux at all. The project will be renamed to barebOS in the next few
> days. Support for booting Linux will be dropped as soon as some the
> remaining missing features are added, like for example a working vi
> applet and nodejs integration. I'm looking forward to your feedback!
> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
