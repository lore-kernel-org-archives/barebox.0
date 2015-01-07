Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8jVs-0008Mb-LW
 for barebox@lists.infradead.org; Wed, 07 Jan 2015 05:50:37 +0000
Received: from mail194.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5EDE4FF9F37
 for <barebox@lists.infradead.org>; Wed,  7 Jan 2015 06:50:13 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150106125737.GD17225@pengutronix.de>
Date: Wed, 7 Jan 2015 13:49:57 +0800
Message-Id: <CE9091FD-0213-4C6A-B034-FF67B2E38DE9@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
 <1419358918-25569-9-git-send-email-plagnioj@jcrosoft.com>
 <20150105105028.GP30369@pengutronix.de>
 <20150106004328.GA4563@ns203013.ovh.net>
 <20150106125737.GD17225@pengutronix.de>
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
Subject: Re: [PATCH 9/9] defaultenv-2: create a specific defaultenv for splash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


> On Jan 6, 2015, at 8:57 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> On Tue, Jan 06, 2015 at 01:43:28AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>>> diff --git a/defaultenv/defaultenv-2-splash/init/splash b/defaultenv/defaultenv-2-splash/init/splash
>>>> new file mode 100644
>>>> index 0000000..04fdc8e
>>>> --- /dev/null
>>>> +++ b/defaultenv/defaultenv-2-splash/init/splash
>>>> @@ -0,0 +1,3 @@
>>>> +#!/bin/sh
>>>> +
>>>> +/env/bin/splash
>>> 
>>> Why do you need a separate /env/bin/splash here? Can't you add its
>>> content here directly?
>>> If we keep it, it should have the same name as the 'splash' command.
>> 
>> The problem today is that the generic init is not ordered (such as rc.{0-9})
>> on linux so if we need specific init before the splash we can not ensure it
>> buy adding an init file that will be added to be run before
>> 
>> The only way is to overwrite the init
>> 
>> or we do introduct a rc.d style buy starting the init with 000-xxx style file
>> name or link
> 
> Then I'm much more in favor for using 000-xxx style. This makes the
> intention clear how things should be ordered.
> 
> Besides, if you need board specific init you can still overwrite
> /env/init/splash instead of /env/bin/splash.

If we do this I propose to move all the default init script in /env/bin or what ever

and use symlink

in /env/init/

what do you think?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
