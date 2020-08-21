Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k92CE-000502-Oy
 for barebox@lists.infradead.org; Fri, 21 Aug 2020 08:14:47 +0000
References: <20200817045332.28099-1-a.fatoum@pengutronix.de>
 <20200817063802.GA1479756@ravnborg.org>
 <514ba35c-a685-8cac-0472-5353415539de@pengutronix.de>
 <20200820133357.GA180086@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <054fcca5-29f5-04db-f58e-31ae2bfaedef@pengutronix.de>
Date: Fri, 21 Aug 2020 10:14:44 +0200
MIME-Version: 1.0
In-Reply-To: <20200820133357.GA180086@ravnborg.org>
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
Subject: Re: [PATCH 1/3] video: add simple, transparent, bridge implementation
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello,

On 8/20/20 3:33 PM, Sam Ravnborg wrote:
>>> And in the kernel we today only accept bindings in DT schema format
>>> (.yaml). Maybe do the same in the barebox and convert this binding to DT
>>> Schema format while at it.
>>
>> having make dtbs and dtbs_check as barebox make targets is on my todo list.
>> For now, I don't see the utility in having yaml bindings when they aren't
>> easily tested.
> You are coloring me confused here.
> 
> .txt based bindings are not testable and syntax errros needs to be
> spotted manually. Futrthermore there is very little in description of
> the syntax.
> 
> .yaml bindings are very simple to test - there is full infrastructure in
> the kernel. And there is semi formal specification of the syntax. And
> this is the syntax to be used for all new bindings.

I am not used to writing yaml bindings. I think the effort is better
invested, when I know the bindings are actively put to use by having
a target that can be run that automatically tests everything.

When we have that, I intend to migrate existing barebox-specific bindings
to YAML, so we can spot the errors.

> Tooling is simple - barebox tooling is not needed:
> 
> cp foobar.yaml ${kernel}/Documentation/bindings/
> make dt_binding_check DT_SCHEMA_FILES=foobar.yaml
> 
> I do not know what is the right approach in barebox, but as I wrote
> above the arguments confused me.
> 
> 	Sam
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
