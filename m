Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cCYXQ-0007Ye-Ir
 for barebox@lists.infradead.org; Thu, 01 Dec 2016 21:05:06 +0000
Received: by mail-wm0-x242.google.com with SMTP id u144so36053835wmu.0
 for <barebox@lists.infradead.org>; Thu, 01 Dec 2016 13:04:43 -0800 (PST)
Received: from [192.168.1.249] ([5.237.10.115])
 by smtp.gmail.com with ESMTPSA id w18sm2771493wme.9.2016.12.01.13.04.40
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Dec 2016 13:04:40 -0800 (PST)
References: <mailman.25.1480622402.5809.barebox@lists.infradead.org>
From: irlinuxbox <irlinuxbox@gmail.com>
Message-ID: <e04d35a2-acc6-4684-66ef-83d5c476f529@gmail.com>
Date: Fri, 2 Dec 2016 00:34:53 +0330
MIME-Version: 1.0
In-Reply-To: <mailman.25.1480622402.5809.barebox@lists.infradead.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: help-UBOOT2 JMP
To: barebox@lists.infradead.org



On 12/01/2016 11:30 PM, barebox-request@lists.infradead.org wrote:
> Re: help-UBOOT2 JMP

> doing a quick grep for "UBOOT2" points to arch/x86/boot/boot_hdisk.S and roughly
> skimming the code shows that this is normal behaviour notifying the user of
> different steps in the boot process.
>
> Regards
> Ulrich


  but my problem is another thing :( / system stop ( maybe hang ! ) and 
just display 'UBOOT2 JMP'

what is my problem here ?

Regards






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
