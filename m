Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOQ51-0001eG-7Z
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 09:38:25 +0000
Received: from corgarff.edi.geip.ge.com (corgarff.edi.geip.ge.com
 [3.26.68.194])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 4E58EE05FC
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 10:38:12 +0100 (BST)
Message-ID: <507E7C84.6020203@ge.com>
Date: Wed, 17 Oct 2012 10:38:12 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1347464902-2127-1-git-send-email-plagnioj@jcrosoft.com>
 <20121016145401.GA30038@game.jcrosoft.org>
In-Reply-To: <20121016145401.GA30038@game.jcrosoft.org>
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
Subject: Re: [PATCH v4] bootm: add global bootm.{image/initrd}.loadaddr support
To: barebox@lists.infradead.org

On 16/10/12 15:54, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:48 Wed 12 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
>> To be able to pass the loadaddr of the image and the initrd.

>> @@ -480,7 +499,9 @@ BAREBOX_CMD_END
>>  
>>  BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
>>  BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
>> +BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr, "bootm default boot image loadaadr");
Should not "loadaadr" be "loadaddr" at the end of the line above.
>>  BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
>> +BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaadr");
Same here.
>>  
>>  static struct binfmt_hook binfmt_uimage_hook = {
>>  	.type = filetype_uimage,
>> -- 
>> 1.7.10.4
>>
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
