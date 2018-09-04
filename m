Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta26.messagelabs.com ([85.158.142.114])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx6nl-0005IE-GX
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 08:35:22 +0000
From: <Oleg.Karfich@wago.com>
Date: Tue, 4 Sep 2018 08:34:50 +0000
Message-ID: <4be8611d-62aa-3991-dcdd-fdaede975c15@wago.com>
References: <1536044850-23483-1-git-send-email-oleg.karfich@wago.com>
 <20180904080938.5tnymhxah4wj2ezd@pengutronix.de>
In-Reply-To: <20180904080938.5tnymhxah4wj2ezd@pengutronix.de>
Content-Language: en-US
Content-ID: <47137F0037F3B74F827AB0465C397C06@WAGO.com>
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
Subject: Re: [PATCH v2] net: dhcp: add global variable for retries
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

On 04.09.2018 10:09, Sascha Hauer wrote:

Hi Sascha,

> On Tue, Sep 04, 2018 at 07:07:37AM +0000, Oleg.Karfich@wago.com wrote:
>> Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
>> ---
>>
>> Changes in v2:
>>
>> 	- use globalvar_add_simple_int
>> 	- set default value to global variable
>> 	- and use the global variable in dhcp requests :-)
>>
>> ---
> 
> This is not exactly a v2 but a fixup for the original patch. Squashed
> the to patches into one and applied, thanks

Ok. Thanks for squashing. So the next time i will send a new v2 patch-series.

> 
> Sascha

Regards 
Oleg

[ ... ]
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
