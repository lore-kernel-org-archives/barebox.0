Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik260-0007Yy-Jz
 for barebox@lists.infradead.org; Wed, 25 Dec 2019 08:32:46 +0000
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
 <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
 <201903211025.18488.jbe@pengutronix.de>
 <CAD_PvuYsX9jMjjS8tmbOO52397dMw-xegh54aUm2hU2wTUGJqw@mail.gmail.com>
 <73e974ac-11a7-6ee7-ee1a-d5fab51e3b2f@eurek.it>
 <3b4f6b4e-f591-e5fc-bbcd-9fc3136f70d0@eurek.it>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <08e4e449-1aa5-436c-ac70-d595d98a1560@pengutronix.de>
Date: Wed, 25 Dec 2019 09:32:40 +0100
MIME-Version: 1.0
In-Reply-To: <3b4f6b4e-f591-e5fc-bbcd-9fc3136f70d0@eurek.it>
Content-Language: en-US
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
Subject: Re: STM32MP1 SoC support in latest Barebox
To: barebox@lists.infradead.org, "gianlucarenzi@eurek.it" <gianlucarenzi@eurek.it>

Hello,

On 3/22/19 10:31 AM, gianluca wrote:
> On 03/22/2019 09:07 AM, gianluca wrote:
> reveals that __NO_SUPPORT__ for this processor at all.Only device tree added from Kernel I suppose...
> 
> That's a real pity. At the moment I have to switch over to UBoot... :-(

Meanwhile, barebox v2019.12.0 landed with these release notes: "With this release the STM32MP1
support continues to evolve, we gained MMC/SD support, PMIC support and ethernet support."

You might want to try this out. Feedback welcome!

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
