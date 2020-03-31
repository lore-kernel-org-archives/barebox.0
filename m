Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAiN-00079m-2P
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 06:49:36 +0000
References: <20200330145717.667403-1-ahmad@a3f.at>
 <20200330145717.667403-13-ahmad@a3f.at>
 <20200331064120.GH27288@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ff09b3f5-55f3-6347-6789-7d7f23e89d55@pengutronix.de>
Date: Tue, 31 Mar 2020 08:49:33 +0200
MIME-Version: 1.0
In-Reply-To: <20200331064120.GH27288@pengutronix.de>
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
Subject: Re: [PATCH 12/12] PWM: add support for STM32
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

Hello,

On 3/31/20 8:41 AM, Sascha Hauer wrote:
>> +		pwm1 = &{/soc/timer@44000000/pwm};
>> +		pwm2 = &{/soc/timer@40000000/pwm};
>> +		pwm3 = &{/soc/timer@40001000/pwm};
>> +		pwm4 = &{/soc/timer@40002000/pwm};
>> +		pwm5 = &{/soc/timer@40003000/pwm};
>> +		pwm8 = &{/soc/timer@44001000/pwm};
>> +		pwm12 = &{/soc/timer@40006000/pwm};
>> +		pwm13 = &{/soc/timer@40007000/pwm};
>> +		pwm14 = &{/soc/timer@40008000/pwm};
>> +		pwm15 = &{/soc/timer@44006000/pwm};
>> +		pwm16 = &{/soc/timer@44007000/pwm};
>> +		pwm17 = &{/soc/timer@44008000/pwm};
> 
> The other aliases start counting at 0. Why not the PWMs?

I named them to match the SoC data sheet,

The final device names are e.g. pwm12ch2, corresponding to TIM12_CH2
in the SoC datasheet. It's IMO the best user experience, because otherwise
you'll always have to look at the aliases in barebox to determine,
which PWM corresponds to what's printed in the schematics.

Cheers
Amad
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
