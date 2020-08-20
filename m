Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8jg9-0006QZ-Rw
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 12:28:26 +0000
References: <1196968959.8187.1597925911899@mail.vodafone.de>
 <3254031d-0a9d-42c5-2e26-b41095d52227@pengutronix.de>
 <1964884639.8285.1597926404532@mail.vodafone.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <15d59a58-4c45-c83f-cb96-17b2d3bc4c93@pengutronix.de>
Date: Thu, 20 Aug 2020 14:28:24 +0200
MIME-Version: 1.0
In-Reply-To: <1964884639.8285.1597926404532@mail.vodafone.de>
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
Subject: Re: NULL pointer deref crash on barebox 2020.08.0
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, barebox@lists.infradead.org

Hello,

On 8/20/20 2:26 PM, Giorgio Dal Molin wrote:
>> What kind of file system is mounted at /mnt/boot?
>>
> 
> Hi
> 
> it's a squashfs:

Do you have Sascha's "squashfs: Fix current master" series applied?
https://lists.infradead.org/pipermail/barebox/2020-August/033488.html

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
