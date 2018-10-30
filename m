Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout1.fh-giessen.de ([212.201.18.42])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHPkp-0001Oz-OY
 for barebox@lists.infradead.org; Tue, 30 Oct 2018 08:52:04 +0000
References: <8b1454dd-7a19-f6c8-d3cd-863372947e4c@mni.thm.de>
 <20181029135332.zdljgjg2lkti3nfv@pengutronix.de>
 <a95255f7-08b4-274a-5e2c-efc2afd3dc5f@mni.thm.de>
 <20181030073347.53i6ynwsfrp2aug3@pengutronix.de>
From: Martin Hofmann <martin.hofmann@mni.thm.de>
Message-ID: <9cb77896-47c9-cf64-5969-df0532a1a6e6@mni.thm.de>
Date: Tue, 30 Oct 2018 09:50:52 +0100
MIME-Version: 1.0
In-Reply-To: <20181030073347.53i6ynwsfrp2aug3@pengutronix.de>
Content-Language: de-DE
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
Subject: Re: No default env without Barebox wanting to load from persistant
 storage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10/30/18 8:33 AM, Sascha Hauer wrote:
> On Tue, Oct 30, 2018 at 07:57:23AM +0100, Martin Hofmann wrote:
>>
>>
>> On 10/29/18 2:53 PM, Sascha Hauer wrote:
>>> Hi Martin,
>>>
>>> On Sun, Oct 28, 2018 at 04:24:13PM +0100, Martin Hofmann wrote:
>>>> Hello everyone,
>>>>
>>>> I am currently working on a Barebox port for our own home made architecture
>>>> used for educational purpose.
>>>>
>>>> The port can be found under github.com/mh0fmann/eco32-barebox and starts
>>>> being used.
>>>>
>>>> Our architecture does not have any kind of nand or nor flash that can be
>>>> added used for /dev/env0 to store a environment in it but we still want to
>>>> use a default compile in enivornment.
>>>>
>>>> In oderder to use that one is in the in the need to activate
>>>> CONFIG_ENV_HANDLING which alaways wants to load a environment from
>>>> /dev/env0.
>>>>
>>>> So the question is - is it not possible to just use a compile in default env
>>>> without the need that barebox wants to load another env from somewhere else
>>>> or did i miss something on the way?
>>>
>>> Indeed this a usecase I never thought of and is not officially
>>> supported. However, a
>>>
>>> 	default_environment_path_set(NULL);
>>>
>>> Should have the desired effect.
>>>
>>> Sascha
>>>
>>
>> Hello Sascha,
>>
>> thanks for the reply!
>>
>> But are your sure that setting the default evironment path to NULL would
>> have the said effect?
>>
>> It will then pass the NULL filepath pointer to open in load_envfs?
>> Which in return also doesn't check for if the argumnt is NULL or not..
>>
>> Looks like barebox crashes in this case
> 
> This most likely goes down to:
> 
> | commit c6bdbf6e93a11227f91fbf15b7a36dceb60c526d
> | Author: Sascha Hauer <s.hauer@pengutronix.de>
> | Date:   Fri Sep 21 14:18:33 2018 +0200
> | 
> |     environment: Allow default env path to be NULL
> |     
> |     Several places assume that the default environment path cannot be NULL.
> |     Allow NULL here without crashing.
> |     
> |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> This commit is in current master, so it'll be in the next release.
> 
> Sascha
> 

Hello Sascha,

thanks for the info. I guess I will wait for the next release then.
Until it is released we will just ignore that message.

Greetings,
Martin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
