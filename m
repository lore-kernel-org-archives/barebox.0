Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk3yE-0007nM-6L
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 09:28:32 +0000
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
 <20190116174559.17416-4-a.fatoum@pengutronix.de>
 <20190116182423.GB27364@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <dae95ea4-770e-86dc-e708-abda129370ae@pengutronix.de>
Date: Thu, 17 Jan 2019 10:28:12 +0100
MIME-Version: 1.0
In-Reply-To: <20190116182423.GB27364@ravnborg.org>
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
Subject: Re: [PATCH 03/11] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On 16/1/19 19:24, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Wed, Jan 16, 2019 at 06:45:51PM +0100, Ahmad Fatoum wrote:
>> Only at91sam9g45_reset.S and the header itself actually use
>> any of the macros defined within.
>>
>> Instead of adding missing definitions and adapting the incoming DDRAMC
>> initialization code from at91bootstrap, just include the at91_ddrsdrc.h
>> header wholesale.
> 
> This seems to go in the opposite direction
> of what we did in for example this commit:
> eaa7fcf934826d519f532227c304c09a62cfe685 ("ARM: at91: Add SoC namespace to matrix defines")
> 
> It adds a lot of defines that are not prefixed with SOC names,
> so asking for conflicts.

You refer to the {HDDRSDRC2,MPDDRC}_* ones?
I'll prefix those in v2.

> 
> Also the patch was a little hard to follow with several types of
> changes in one patch.
> (Adding files, replacing header files, deleting files)

Will split it for v2.

> 
> 	Sam
> 

Thanks
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
