Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.itk-engineering.de ([212.121.145.30])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUrjy-0000Zb-Bb
 for barebox@lists.infradead.org; Tue, 11 Jul 2017 09:46:00 +0000
From: Martin Hollingsworth <Martin.Hollingsworth@itk-engineering.de>
Date: Tue, 11 Jul 2017 09:45:27 +0000
Message-ID: <11441e7979d54a34951ab2bd2860a75f@itk-engineering.de>
References: <CAGUZs0ke=+-Hc+bj0yKcke_W08CPBBq2tb6Pkq=xL2FjrLb-YQ@mail.gmail.com>
 <CAGUZs0nTzR6HvQ8YnDH0xBZ6quCdhUHejp4O1dvCon9pgRyiCg@mail.gmail.com>
In-Reply-To: <CAGUZs0nTzR6HvQ8YnDH0xBZ6quCdhUHejp4O1dvCon9pgRyiCg@mail.gmail.com>
Content-Language: de-DE
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
Subject: AW: Bootchooser - remaining_attempts
To: =?utf-8?B?w4dhxJ9sYXIgS2lsaW1jaQ==?= <ckilimci@gmail.com>, barebox <barebox@lists.infradead.org>

Hello Caglar,
I am no expert in bootchooser, but I am currently implementing it on an imx6 board using barebox 2017-3.

Regarding the first issue. These are my settings, with them target A is successfully disabled after 5 attempts and never automatically enabled again. 
I set the "default_xxx" values within the config-board script of my barebox default-environment. I do not set the current values (like "A.remaining_attempts") within the environment. They are generated on the first execution of bootchooser and stored within the nv variables. Do you maybe accidentally overwrite the current values on startup with some script from the environment? (happened to me ^^^).
Have you tried explicitly configuring global.bootchooser.reset_attempts='' as empty, instead of not defining it?

<<< from: config-board <<<<<<
# General bootchooser settings
global.bootchooser.disable_on_zero_attempts=0
global.bootchooser.default_attempts=5
global.bootchooser.default_priority=1
global.bootchooser.reset_attempts=''
global.bootchooser.reset_priorities=''
global.bootchooser.retry=1
global.bootchooser.targets="A B"

# Slot "A" default configuration
nv bootchooser.A.boot=A
nv bootchooser.A.default_attempts=5
nv bootchooser.A.default_priority=10

# Slot "B" default configuration
nv bootchooser.B.boot=B
nv bootchooser.B.default_attempts=1
nv bootchooser.B.default_priority=5
<<<<<<<<<<<<<<<<<<<<<<<<<<<<

Regards, 
Martin Hollingsworth
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
