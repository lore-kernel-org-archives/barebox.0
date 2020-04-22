Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9pM-0000vv-W3
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:29:50 +0000
References: <20200415093600.1662643-1-ahmad@a3f.at>
 <20200420140824.GE1694@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <65f0737a-3853-c266-26fd-3d14c3e1bbf0@pengutronix.de>
Date: Wed, 22 Apr 2020 09:29:47 +0200
MIME-Version: 1.0
In-Reply-To: <20200420140824.GE1694@pengutronix.de>
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
Subject: Re: [PATCH] startup: add $global.autoboot to make behavior
 configurable
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

Hi,

On 4/20/20 4:08 PM, Sascha Hauer wrote:
>> +	globalvar_add_simple_enum("autoboot",
>> +				  &autoboot_state,
>> +				  autoboot_states,
>> +				  ARRAY_SIZE(autoboot_states));
> 
> Please add a MAGICVAR description for this.

Will do.

> Setting it to AUTOBOOT_BOOT seems a bit dangerous, there's no way back
> if booting goes wrong.

You can still abort init itself with ctrl+c, not much different than when
using normal countdown.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
