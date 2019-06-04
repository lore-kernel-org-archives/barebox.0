Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4r9-0001av-2U
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:31:44 +0000
References: <20190603190559.16715-1-a.fatoum@pengutronix.de>
 <20190603190559.16715-2-a.fatoum@pengutronix.de>
 <20190604081139.kb2ond6ochfgosrg@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <57311ee9-0a89-2f8f-76be-1589a2609942@pengutronix.de>
Date: Tue, 4 Jun 2019 10:31:37 +0200
MIME-Version: 1.0
In-Reply-To: <20190604081139.kb2ond6ochfgosrg@pengutronix.de>
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
Subject: Re: [PATCH 2/7] reset_source: add new Brownout reset (BOR) source
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 4/6/19 10:11, Sascha Hauer wrote:
> On Mon, Jun 03, 2019 at 09:05:54PM +0200, Ahmad Fatoum wrote:
>> The STM32MP1 can report brown out as reason for a reset,
>> which doesn't fit into existing reasons. Thus add a new
>> one to the enumeration.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/reset_source.c  | 1 +
>>  include/reset_source.h | 1 +
>>  2 files changed, 2 insertions(+)
>>
>> diff --git a/common/reset_source.c b/common/reset_source.c
>> index 338d7b9acb30..0489724f3e7f 100644
>> --- a/common/reset_source.c
>> +++ b/common/reset_source.c
>> @@ -28,6 +28,7 @@ static const char * const reset_src_names[] = {
>>  	[RESET_JTAG] = "JTAG",
>>  	[RESET_THERM] = "THERM",
>>  	[RESET_EXT] = "EXT",
>> +	[RESET_BOR] = "BOR",
>>  };
>>  
>>  static enum reset_src_type reset_source;
>> diff --git a/include/reset_source.h b/include/reset_source.h
>> index 86e415abcf84..c124278ec674 100644
>> --- a/include/reset_source.h
>> +++ b/include/reset_source.h
>> @@ -22,6 +22,7 @@ enum reset_src_type {
>>  	RESET_JTAG,	/* JTAG reset */
>>  	RESET_THERM,	/* SoC shut down because of overtemperature */
>>  	RESET_EXT,	/* External reset through device pin */
>> +	RESET_BOR,	/* Brownout Reset */
> 
> Reading "BOR" as "Brown Out Reset" is not very obvious. Maybe better use
> RESET_BROWNOUT and "BROWNOUT". That shouldn't be too long to read and
> write.

Will rename in v2, along with Sam's comment. 

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
