Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www.webware-experts.de ([80.78.166.106])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9BrS-00024Z-9E
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 09:25:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by www.webware-experts.de (Postfix) with ESMTP id 522221B68898
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 11:25:17 +0200 (CEST)
Received: from www.webware-experts.de ([127.0.0.1])
 by localhost (webwarexs.private [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tyw3yKgeOu2L for <barebox@lists.infradead.org>;
 Wed,  5 Sep 2012 11:25:17 +0200 (CEST)
Received: from [192.168.3.131] (p57bb9106.dip0.t-ipconnect.de [87.187.145.6])
 by www.webware-experts.de (Postfix) with ESMTPSA id F12B41B6888D
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 11:25:16 +0200 (CEST)
Message-ID: <50471A79.6070707@webware-experts.de>
Date: Wed, 05 Sep 2012 11:25:13 +0200
From: Norbert Roos <nroos@webware-experts.de>
MIME-Version: 1.0
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel>
In-Reply-To: <1346825557.3625.4.camel@lws-weitzel>
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
Subject: Re: MLO doesn't work, rest is ok
To: barebox@lists.infradead.org

On 09/05/2012 08:12 AM, Jan Weitzel wrote:

>> I just wanted to try the freshly generated MLO and barebox.bin on my
>> Phytec PCM049 board (OMAP4 based). Copied both files to the FAT
>> partition on the SD card.
>>
>> Unfortunately it doesn't boot, after trying to boot from SD card the ROM
>> boot loader oviously skips to booting from UART.
>
> Hi,
> which barebox version? Is the board with OMAP4460?

barebox is 2012.08.0, OMAP4430.

bye
Norbert


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
