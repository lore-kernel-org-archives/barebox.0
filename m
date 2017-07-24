Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wp303.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8548::])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZbXt-0000Dl-Um
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 11:29:07 +0000
Date: Mon, 24 Jul 2017 13:28:41 +0200 (CEST)
From: Norbert Wiedmann <info@n-wiedmann.de>
Message-ID: <462439994.27865.1500895721159@ox.hosteurope.de>
MIME-Version: 1.0
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
Subject: Bootchooser has unexpected changes of variable 'remaining_attempts'
To: barebox@lists.infradead.org

Hi everyone,
I have an unexpected behaviour with my bootchooser framework since 
barebox version 2017.05.
 
After reflashing barebox, and cleaning the environment and the state partition,
the boot message shows:

stMyBoot: New state registered 'stMyBoot'
stMyBoot: Failed to find any valid state copy in any bucket
stMyBoot: Failed to read state with format dtb, -2
state stMyBoot.14: Failed to load persistent state, continuing with defaults,-2

Barebox continues with defaults, this seems OK.
I double checked this by printing the variables (default is 0xffffffff)

printenv stMyBoot.bootchooser.factory.remaining_attempts
stMyBoot.bootchooser.factory.remaining_attempts=4294967295

printenv stMyBoot.bootchooser.system1.remaining_attempts       
stMyBoot.bootchooser.system1.remaining_attempts=4294967295

printenv stMyBoot.bootchooser.system2.remaining_attempts
stMyBoot.bootchooser.system2.remaining_attempts=4294967295

Next, I call boot, and everything works fine, the target with the highest
priority, which is 'system1', boots.

booting 'bootchooser'
booting 'system1'

The system boots as expected. I have no modification within my linux.

The problem starts with the second boot, which fails:

barebox outputs:
stMyBoot: New state registered 'stMyBoot'
stMyBoot: Using bucket 0@0x00000000

This is OK, the bucket was written during the first boot, because the
remaining_attempts should be decreased. But, unexpectly, the bootchooser
is completly deactivated, all three boot targets have remaining_attempts=0

booting 'bootchooser'
bootchooser: No valid targets found:
system1
    id: 1
    priority: 22
    default_priority: 1
    remaining attempts: 0
    default attempts: 3
    boot: 'system1'
    disabled due to remaining attempts = 0
system2
    id: 2
    priority: 21
    default_priority: 1
    remaining attempts: 0
    default attempts: 3
    boot: 'system2'
    disabled due to remaining attempts = 0
factory
    id: 3
    priority: 10
    default_priority: 1
    remaining attempts: 0
    default attempts: 3
    boot: 'factory'
    disabled due to remaining attempts = 0
booting 'bootchooser' failed: No such file or directory

I placed a printenv in my boot entry file and, when booting the first time
after a new  reflashing, the output is
stMyBoot.bootchooser.system1.remaining_attempts=0

I looks like the bootchooser doesn't use the default/actual value for
'remaining_attempts' when saving the variables after he has decided which
boot target he will use.

Everything worked fine up to 2017.04
Behaviour as descriped tested with 2017.05, 2017.07.1
 
What is going wrong?
Thanks for your consideration in this matter.

Best regards
Norbert Wiedmann

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
