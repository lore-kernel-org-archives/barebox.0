Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeRVE-0002fs-Sd
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 15:28:14 +0000
Received: from mail92.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6D327FF9A39
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2013 16:28:43 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 7.0 \(1816\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1383835020.4120.2.camel@weser.hi.pengutronix.de>
Date: Thu, 7 Nov 2013 23:27:39 +0800
Message-Id: <572C7A49-B2B8-4DD1-B9A7-2FCE0444356B@jcrosoft.com>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
 <1383747881-15698-3-git-send-email-jbe@pengutronix.de>
 <20131107100456.GJ26639@ns203013.ovh.net>
 <20131107110909.GR24559@pengutronix.de>
 <20131107143749.GK26639@ns203013.ovh.net>
 <1383835020.4120.2.camel@weser.hi.pengutronix.de>
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
Subject: Re: [SPAM] [PATCH 2/3] FPGA: add a programming command
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>


On Nov 7, 2013, at 10:37 PM, Lucas Stach <l.stach@pengutronix.de> wrote:

> Am Donnerstag, den 07.11.2013, 15:37 +0100 schrieb Jean-Christophe
> PLAGNIOL-VILLARD:
>> On 12:09 Thu 07 Nov     , Sascha Hauer wrote:
>>> On Thu, Nov 07, 2013 at 11:04:56AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>>> Hi,
>>>> 
>>>> 	I really do not like it
>>>> 
>>>> 	we need to have an API to load firmware same a Linux
>>> 
>>> The firmware loading mechanism in Linux is driven by the driver
>>> requesting a firmware. This is appropriate for WiFi drivers which can't
>>> continue without a firmware. For FPGAs which can be loaded, unloaded, or
>>> even partially loaded, it's the user that should trigger firmware
>>> loading, not the driver.
>>> 
>>> Also, in barebox a user should decide if and when a firmware is loaded.
>>> We have cases where a single board requires different Firmwares
>>> depending on bootstrapping. In this case You don't want to have fixed
>>> firmware names.
>>> 
>>> So no, the Linux Firmware model is not suitable for barebox (it sucks
>>> for Linux aswell in many cases).
>> 
>> and command is horrible as you need to known the protocol which you do not
>> care
>> 
>> you just need to known the fpga device and firmware you want to use
>> 
>> then the fpga driver will handle
>> 
> Did you take the time to read the patches?
> 
> From a user perspective you only specify which FPGA you want to program
> and tell the command which firmware file to use. The protocol and other
> lowlevel stuff is taken care of in the handler.

yes I did but the issue is that you need to use a command instead just simply
set a parameter to the fpga device

that why I hate the idea of command you use the device to set the firmware you want

Best Regards,
J.

> 
> Regards,
> Lucas
> -- 
> Pengutronix e.K.                           | Lucas Stach                 |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
