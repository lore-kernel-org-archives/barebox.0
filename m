Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jtHDJ-00034x-0B
 for barebox@lists.infradead.org; Wed, 08 Jul 2020 21:02:45 +0000
Received: by mail-lf1-x144.google.com with SMTP id k15so27656564lfc.4
 for <barebox@lists.infradead.org>; Wed, 08 Jul 2020 14:02:42 -0700 (PDT)
Date: Thu, 9 Jul 2020 00:02:32 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20200708210231.GA24761@chr>
References: <20200707135608.31901-1-pmamonov@gmail.com>
 <c50f7807-9bfa-bc70-d771-f798422760e1@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c50f7807-9bfa-bc70-d771-f798422760e1@pengutronix.de>
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
Subject: Re: RFC: types conflicts
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello, Ahmad,

On Wed, Jul 08, 2020 at 10:02:00AM +0200, Ahmad Fatoum wrote:
> Hello Peter,
> 
> On 7/7/20 3:56 PM, Peter Mamonov wrote:
> > Hello,
> > 
> > I tried to build MicroPython using barebox toolchain and found a number of
> > conflicts between barebox and compiler headers. Below you will find the patch
> > which demostrates some of them. In this particular example the problem arises
> > due to simultaneous inclusion of some compiler headers along with barebox
> > version of `strings.h`, which in turn includes barebox analogs of those headers
> > from `include/linux`. I belive there should be a segregation between headers in
> > `include` and in `include/linux`, i.e. headers from `include/` should not
> > reference <linux/*.h> headers. Yet I understand this is somewhat problematic.
> > What do you think?
> 
> barebox code shouldn't make use of any compiler headers at all, except for <stdarg.h>.
> The only exception are arch/sandbox/os and scripts/, which reference libc headers.
> Everything else should comes out of barebox' include/ directory.
> 
> If you have foreign code that you want to port into barebox, either modify it
> to use barebox headers or change the include order when building it to use _local_
> versions of the headers it requires.

Ok, I've got your point. Yet I want to point out that addition of *unmodified* 
code in a form of git submodule would greatly simplify further support of this 
port. Unfortunately modifying include order will not help in this case, since, 
for example, both `barebox/include/linux/stddef.h` (included from 
`barebox/include/string.h` via <linux/string.h>, etc.) and 
`/usr/lib/gcc-cross/<ARCH>-linux-gnu/X/include/stdbool.h` define `true`/`false` 
macros. On the other hand `/usr/include/linux/stddef.h` and 
`/usr/lib/gcc/<ARCH>-linux-gnu/X/include/stdbool.h` coexist in GNU/Linux system 
nicely, since no header from `/usr/include/` does reference <linux/*.h> 
headers.

> > diff --git a/commands/types_conflict.c b/commands/types_conflict.c
> > new file mode 100644
> > index 0000000000..70fee8d6f4
> > --- /dev/null
> > +++ b/commands/types_conflict.c
> > @@ -0,0 +1,12 @@
> > +#include <stdbool.h>
> > +#include <stdint.h>
> > +#include <stddef.h>
> > +
> > +#include <string.h>
> 
> barebox (except sandbox) is meant to be compiled with freestanding C implementations
> that aren't required to provide a <string.h>. So no barebox code should depend on
> compiler-provided <string.h>.

Actually `string.h` comes from barebox's `include/` dir, while `std*.h` come 
from compiler's include dir. 


PS: By the way, do you think Barebox will benefit from importing MicroPython 
(https://micropython.org/) and exposing some of Barebox APIs to it?

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
