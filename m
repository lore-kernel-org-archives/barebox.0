Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1enevM-0007r4-BK
 for barebox@lists.infradead.org; Mon, 19 Feb 2018 06:27:42 +0000
Date: Mon, 19 Feb 2018 07:27:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180219062724.apr4izfpiv3pai7o@pengutronix.de>
References: <4066173.3341.1518772140511@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4066173.3341.1518772140511@mail.vodafone.de>
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
Subject: Re: re-generate the builtin environment
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hi Giorgio,

On Fri, Feb 16, 2018 at 10:09:00AM +0100, Giorgio Dal Molin wrote:
> Hi,
> 
> I want to build a default environment in the barebox for my
> board.
> 
> 
> For this I defined the following vars in the .config file:
> 
> ...
> CONFIG_DEFAULT_ENVIRONMENT=y
> CONFIG_DEFAULT_COMPRESSION_LZ4=y
> CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU=y
> CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/am335x-evm/defaultenv-am335x_evm"
> ...
> 
> What I observe is that the first time I build barebox the default env is also built;
> but after that, if I modify something under CONFIG_DEFAULT_ENVIRONMENT_PATH and
> just rebuild the barebox dir. without a 'make clean' then the changes are missed.
> 
> It this correct or do I do something wrong.
> 
> The second question is: I noticed that in the board Makefile:
> 
>  arch/arm/boards/am335x-evm/Makefile
> 
> one can add the definition:
> 
> bbenv-y += defaultenv-am335x_evm

Try this one instead. Traditionally there has only been
CONFIG_DEFAULT_ENVIRONMENT_PATH. bbenv-y is for compiling different
separate environment snippets into the binary and to activate them
later in the code. Adding bbenv-y like above doesn't change anything,
the snippet needs to be loaded using:

defaultenv_append_directory(defaultenv_am335x_evm);

This is used for compiling barebox for multiple boards and decide during
runtime which board specific env should be used.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
