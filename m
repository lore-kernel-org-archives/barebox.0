Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emc1I-0004GI-21
 for barebox@lists.infradead.org; Fri, 16 Feb 2018 09:09:30 +0000
Received: from vsmx001.vodafonemail.xion.oxcs.net (unknown [192.168.75.191])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id 96E93C0246
 for <barebox@lists.infradead.org>; Fri, 16 Feb 2018 09:09:03 +0000 (UTC)
Received: from null (app-40.app.xion.oxcs.net [10.10.1.40])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 80A123002DE
 for <barebox@lists.infradead.org>; Fri, 16 Feb 2018 09:09:00 +0000 (UTC)
Date: Fri, 16 Feb 2018 10:09:00 +0100 (CET)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <4066173.3341.1518772140511@mail.vodafone.de>
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
Subject: re-generate the builtin environment
To: barebox@lists.infradead.org

Hi,

I want to build a default environment in the barebox for my
board.


For this I defined the following vars in the .config file:

...
CONFIG_DEFAULT_ENVIRONMENT=y
CONFIG_DEFAULT_COMPRESSION_LZ4=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU=y
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/am335x-evm/defaultenv-am335x_evm"
...

What I observe is that the first time I build barebox the default env is also built;
but after that, if I modify something under CONFIG_DEFAULT_ENVIRONMENT_PATH and
just rebuild the barebox dir. without a 'make clean' then the changes are missed.

It this correct or do I do something wrong.

The second question is: I noticed that in the board Makefile:

 arch/arm/boards/am335x-evm/Makefile

one can add the definition:

bbenv-y += defaultenv-am335x_evm

Isn't it a duplicate of the CONFIG_DEFAULT_ENVIRONMENT_PATH make var. ?

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
