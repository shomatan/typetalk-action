# Typetalk for GitHub Actions
Post a Typetalk message. 

## Usage
     - name: Notify to Typetalk
       uses: shomatan/typetalk-action@master
       env:
         TYPETALK_TOKEN: ${{ secrets.TYPETALK_TOKEN }}
         TOPIC_ID: 123456
       with:
         args: "Build success :smile:"

Appearance on Typetalk :

<img src="docs/images/example.png" width="250">

## License
MIT