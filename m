Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay02.ispgateway.de ([80.67.31.36])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SAOci-0004j9-HX
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 16:42:57 +0000
Message-ID: <4F6A0534.3060808@ronetix.at>
Date: Wed, 21 Mar 2012 18:43:32 +0200
From: RONETIX - Asen Dimov <dimov@ronetix.at>
MIME-Version: 1.0
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-1-git-send-email-dimov@ronetix.at>
 <20120302171851.GD12248@game.jcrosoft.org> <4F5899EF.8010801@ronetix.at>
 <20120308130529.GN12248@game.jcrosoft.org>
In-Reply-To: <20120308130529.GN12248@game.jcrosoft.org>
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
Subject: Re: [PATCH v2 1/4] pm9g45: boot from NAND
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

I am back on the pm9g45 patches again.

On 03/08/2012 03:05 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:37 Thu 08 Mar     , RONETIX - Asen Dimov wrote:
>> Hi Jean-Christophe,
>>
>> On 03/02/2012 07:18 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>
>> In the "defaultenv/bin/boot"  it is mentioned "/dev/nand0.kernel.bb"
>> and many boards are using
>> ".bb" suffix.
> no the name need to be kernel
>
> the .dd will be add automatically for the bad bloack aware device
> so you loose space
In the pm9g45 v3 patch series the MTD partition for Linux is named 
"kernel", and "defaultenv/bin/boot"
script looks for "/dev/nand0.kernel.bb".  In the same time all boards 
name Linux MTD partition
"kernel.bb". Is this "bad block aware device" driver scheduled to be 
implemented in barebox or
is it allowable to rename that partition to "kernel.bb" to un-broke the 
boot process?

> Best Regards,
> J.
Regards,
Asen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
